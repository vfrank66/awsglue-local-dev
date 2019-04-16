#!/bin/bash
set -e

TAG=2.2.1-hadoop2.7

build() {
    NAME=$1
    IMAGE=spark/spark-$NAME:$TAG
    cd $([ -z "$2" ] && echo "./$NAME" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

buildToPush() {
    NAME=$1
    IMAGE=vfrank66/awsglue-local-dev:spark-$NAME$TAG
    cd $([ -z "$2" ] && echo "./$NAME" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

build base
buildToPush master
buildToPush worker
buildToPush submit