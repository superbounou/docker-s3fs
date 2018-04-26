FROM alpine

MAINTAINER Nicolas Bounoughaz <superbounou@gmail.com>

ENV VERSION 1.83

RUN	echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    apk update && \
    apk upgrade

RUN set -x && \
    apk add --no-cache \
    alpine-sdk \
    automake \
    build-base \
    autoconf \
    fuse \
    fuse-dev \
    libcurl \
    curl-dev \
    libxml2-dev

RUN mkdir /usr/src && curl -L https://github.com/s3fs-fuse/s3fs-fuse/archive/v${VERSION}.tar.gz | tar zxv -C /usr/src
RUN cd /usr/src/s3fs-fuse-${VERSION} && ./autogen.sh && ./configure --prefix=/usr && make && make install
