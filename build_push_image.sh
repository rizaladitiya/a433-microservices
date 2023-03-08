#!/bin/sh

#build Docker images
docker build -t item-app:v1 .

#tampilkan semua docker images
docker images

#ganti nama docker images sesuai format docker hub
docker tag item-app:v1 rizaladitiya/item-app:v1

#login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u rizaladitiya --password-stdin

#push ke docker hub
docker push rizaladitiya/item-app:v1
