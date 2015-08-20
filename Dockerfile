FROM alpine:3.2
MAINTAINER Arnau Siches <arnau@ustwo.com>

RUN adduser -D ustwo \
  && addgroup ustwo ustwo

RUN apk add --update \
  nodejs \
  && rm -rf /var/cache/apk/*

WORKDIR /home/ustwo
EXPOSE 8888
CMD ["node"]
