FROM node:9-alpine
MAINTAINER Ju Lin <soasme@gmail.com>

ENV TW_VERSION=5.1.15 TW_DATA=/data TW_NAME=wiki TW_USER="" TW_PASSWORD="" TW_LAZY=""

VOLUME ${TW_DATA}

ADD ./entrypoint.sh /usr/local/bin
EXPOSE 8080

RUN npm install --silent -g tiddlywiki@${TW_VERSION}

CMD ["/usr/local/bin/entrypoint.sh"]
