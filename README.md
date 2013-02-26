# [christopher-webb.com](http://christopher-webb.com)
Built using Launchpad, a development framework engineered for rapid prototyping.

## Environmental Dependencies
- [node.js 0.8.8+](http://nodejs.org/dist/v0.8.8/node-v0.8.8.pkg)

## Setup
1. `[sudo] make install` to install app dependencies after a fresh clone
2. `[sudo] npm uninstall -g grunt` to uninstall previous versions of grunt
3. `[sudo] npm install -g grunt-cli` to install grunt 0.4.0+
4. Download LiveReload for [Chrome](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei) or [Safari](http://download.livereload.com/2.0.9/LiveReload-2.0.9.safariextz) to avoid constant refreshing

## Workflow
`make dev` for local development

- starts a local server (serves `public/` at [localhost:3000](http://localhost:3000))
- starts a file watcher for `src/stylus/app.styl` and `public/js/app.js`
- starts a local LiveReload server to reload changes in assets without reloading your browser.

`make server` for demos

- ONLY starts a basic node app (serves `public/` at [localhost:3000](http://localhost:3000))