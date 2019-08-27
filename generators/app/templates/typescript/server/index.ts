import path from 'path';
import kcors from 'kcors';
import Koa from 'koa';
import bodyParser from 'koa-bodyparser';
import logger from 'koa-logger';
import config from './config';
import views from 'koa-views';
import serve from 'koa-static';
import proxy from 'http-proxy-middleware';
import connect from 'koa2-connect';
import fs from 'fs-extra';

import indexRouter from './routers/index';
// <import-routers>

const app = new Koa();

app.use(views(path.join(__dirname, config.isDev ? '../dev/server-templates' : '../server-templates'), {
  map: {
    html: 'handlebars'
  }
}));

app.use(async (ctx, next) => {
  if (ctx.url.startsWith('/api')) {
    ctx.respond = false;
    await connect(proxy({
      target: 'SOME_API_URL',
      changeOrigin: true,
      // pathRewrite: {
      //   '^/api': ''
      // },
      secure: config.isDev ? false : true,
    }))(ctx, next);
  }
  await next();
});

app.use(indexRouter.routes()).use(indexRouter.allowedMethods());
// <use-imported-routers>

app.use(serve(path.join(__dirname, '../server-bundle')));
(config.isDev && app.use(serve(path.join(__dirname, '../dev/server-bundle'))));
app.use(serve(path.join(__dirname, (config.isDev ? '../dev/' : '../'), './server-static')));
app.use(kcors());
app.use(bodyParser());
if (config.isDev) app.use(logger());

const port: number = process.env.PORT ? parseInt(process.env.PORT, 10) : 5000;

config.isDev && process.on('SIGINT', () => {
  fs.removeSync('dev');
  process.exit(0);
});

app.listen(port);
