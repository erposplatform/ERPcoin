#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-erpcoinpay/erpcoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/erpcoind docker/bin/
cp $BUILD_DIR/src/erpcoin-cli docker/bin/
cp $BUILD_DIR/src/erpcoin-tx docker/bin/
strip docker/bin/erpcoind
strip docker/bin/erpcoin-cli
strip docker/bin/erpcoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
