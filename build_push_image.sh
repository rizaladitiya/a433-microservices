#!/bin/sh

docker build -t item-app:v1 .
docker images
docker tag item-app:v1 rizaladitiya/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u rizaladitiya --password-stdin
docker push rizaladitiya/item-app:v1
