'use strict';
const path = require('path');
const assert = require('yeoman-assert');
const helpers = require('yeoman-test');

describe('generator-react-ssr:page with TypeScript', () => {
  beforeAll(() => {
    return helpers
      .run(path.join(__dirname, '../generators/page'))
      .withPrompts({
        name: 'example',
        typescript: true,
        entrypoint: 'root'
      });
  });

  it('creates files', () => {
    assert.file('index.tsx');
  });
});

describe('generator-react-ssr:page with JavaScript', () => {
  beforeAll(() => {
    return helpers
      .run(path.join(__dirname, '../generators/page'))
      .withPrompts({
        name: 'example',
        typescript: false,
        entrypoint: 'root'
      });
  });

  it('creates files', () => {
    assert.file('index.js');
  });
});
