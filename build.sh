#!/bin/sh

IMAGE=teemow/registry-auth
VERSION=$(cat ./VERSION)

docker build -t $IMAGE .
docker tag $IMAGE $IMAGE:$VERSION
