{
  "name": "<%= name %>",
  "version": "<%= version %>",
  "description": "<%= description %>",
  "license": "<%= license %>",
  "repository": {
    "type": "git",
    "url": "<%= repository %>"
  },
  "author": "<%= author %>",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "dev:webpack": "cross-env NODE_ENV=development webpack -wd --config src/config/webpack.config.js",
    "start": "npm run dev:webpack | npm run dev:server",
    "build:bundle:dev": "cross-env NODE_ENV=development webpack --config src/config/webpack.config.js --mode development",
    "build:bundle:prod": "cross-env NODE_ENV=production webpack --config src/config/webpack.config.js --mode production",
    "clean:dev": "node scripts/clean.js dev",
    "clean:prod": "node scripts/clean.js prod",
    "clean": "npm run clean:dev && npm run clean:prod"
  },
  "browserslist": [
    "last 1 version",
    "> 1%",
    "maintained node versions",
    "not dead"
  ],
  "devDependencies": {
    "@babel/core": "7.2.2",
    "@babel/plugin-proposal-class-properties": "7.3.0",
    "@babel/plugin-proposal-object-rest-spread": "7.3.1",
    "@babel/plugin-syntax-dynamic-import": "^7.2.0",
    "@babel/preset-env": "7.3.1",
    "@babel/preset-react": "7.0.0",
    "@babel/preset-typescript": "7.1.0",
    "@types/cheerio": "^0.22.13",
    "@types/dotenv": "^6.1.1",
    "@types/fs-extra": "^8.0.0",
    "@types/glob": "^7.1.1",
    "@types/http-proxy-middleware": "^0.19.2",
    "@types/kcors": "^2.2.3",
    "@types/koa": "^2.0.49",
    "@types/koa-bodyparser": "^4.3.0",
    "@types/koa-logger": "^3.1.1",
    "@types/koa-router": "^7.0.42",
    "@types/koa-static": "^4.0.1",
    "@types/koa-views": "^2.0.3",
    "@types/node": "^12.7.5",
    "@types/react": "16.7.22",
    "@types/react-dom": "16.0.11",
    "@types/react-router": "^5.0.3",
    "@types/react-router-dom": "^4.3.4",
    "@typescript-eslint/eslint-plugin": "^1.13.0",
    "@typescript-eslint/parser": "^1.13.0",
    "assets-webpack-plugin": "^3.9.10",
    "babel-eslint": "^10.0.2",
    "babel-loader": "8.0.5",
    "babel-preset-react-app": "^9.0.0",
    "clean-webpack-plugin": "^3.0.0",
    "copy-webpack-plugin": "^5.0.3",
    "cross-env": "^5.2.0",
    "css-loader": "2.1.0",
    "eslint": "^6.1.0",
    "eslint-config-alloy": "^2.0.5",
    "eslint-plugin-react": "^7.14.3",
    "glob": "^7.1.4",
    "html-loader": "^0.5.5",
    "html-webpack-plugin": "3.2.0",
    "mini-css-extract-plugin": "^0.8.0",
    "nodemon": "^1.19.1",
    "postcss-loader": "^3.0.0",
    "terser-webpack-plugin": "^1.4.1",
    "ts-node": "^8.3.0",
    "typescript": "3.2.4",
    "uglifyjs-webpack-plugin": "^2.2.0",
    "webpack": "4.29.0",
    "webpack-cli": "3.2.1",
    "webpack-dev-server": "3.1.14"
  },
  "dependencies": {
    "autoprefixer": "^9.6.1",
    "axios": "^0.19.0",
    "cheerio": "^1.0.0-rc.3",
    "file-loader": "^4.1.0",
    "fs-extra": "^8.1.0",
    "glob": "^7.1.4",
    "handlebars": "^4.1.2",
    "http-proxy-middleware": "^0.19.1",
    "kcors": "^2.2.2",
    "koa": "^2.7.0",
    "koa-bodyparser": "^4.2.1",
    "koa-logger": "^3.2.1",
    "koa-router": "^7.4.0",
    "koa-static": "^5.0.0",
    "koa-views": "^6.2.0",
    "koa2-connect": "^1.0.2",
    "path-parser": "^4.2.0",
    "react": "^16.8.6",
    "react-dom": "^16.8.6",
    "react-router": "^5.0.1",
    "react-router-dom": "^5.0.1"
  }
}