#!/bin/bash

ACCESSID=$1
ACCESSKEY=$2

if [ "x$1" = "x" ]; then
    echo "Please specify your S3 bucket credentials"
    exit 1
fi

docker build --build-arg ACCESSID=${ACCESSID} --build-arg ACCESSKEY=${ACCESSKEY} -t docker-s3fs:alpine -f s3fs/Dockerfile .
