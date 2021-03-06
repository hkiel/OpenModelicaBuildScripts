#!/bin/sh -xe

docker login docker.openmodelica.org

TAG=docker.openmodelica.org/fmuchecker:v2.0.4-arm
docker build --pull -t "$TAG" fmuchecker-arm
docker push "$TAG"
