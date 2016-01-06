FROM alpine:3.3
MAINTAINER Arnau Siches <arnau@ustwo.com>

RUN adduser -D ustwo \
 && addgroup ustwo ustwo

RUN apk add --update \
      nodejs \
      nodejs-dev \
 && rm -rf /var/cache/apk/*

WORKDIR /home/ustwo
EXPOSE 8888
CMD ["node"]
