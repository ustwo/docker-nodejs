# ustwo node.js

This image is based on [Alpine](https://alpinelinux.org) to ensure a small base
image.

## Versions

* 0.12.2, latest

## Assumptions

* Port: `8888`.
* Workdir: `/home/ustwo`.

## Usage

    FROM ustwo/nodejs:0.12.2
    # Your instructions

### Full example

    FROM ustwo/nodejs:0.12.2
    MAINTAINER Montgomery Burns <mrburns@ustwo.com>

    ENV NODE_ENV=production

    COPY package.json /home/ustwo/package.json
    RUN npm install --production
    COPY server /home/ustwo/server

    CMD ["node", "/usr/local/src/node_modules/babel/lib/_babel-node", "--optional", "es7.classProperties", "server"]

## Maintainers

* [Arnau Siches](mailto:arnau@ustwo.com)
