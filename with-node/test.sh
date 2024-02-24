#!/bin/sh -e

DIR=$(cd $(dirname $0) && pwd)
${DIR}/../test.sh
docker container run --rm --entrypoint '' ${IMAGE_NAME:-zenika/alpine-chrome:with-node} node --version
