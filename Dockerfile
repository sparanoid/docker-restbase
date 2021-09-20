FROM node:7-alpine

LABEL maintainer="t@sparanoid.com"

ENV RESTBASE_VERSION=v1.1.4

EXPOSE 7231

RUN apk add --no-cache git \
    && npm install -g --only=production restbase@${RESTBASE_VERSION} restbase-mod-table-sqlite \
    && npm cache clean --force \
    && rm -rf /tmp/npm* /root/.node* /root/.npm

WORKDIR /usr/local/lib/node_modules/restbase/

VOLUME /usr/local/lib/node_modules/restbase/

COPY ./config.yaml ./

ENTRYPOINT ["node", "/usr/local/lib/node_modules/restbase/server.js"]
