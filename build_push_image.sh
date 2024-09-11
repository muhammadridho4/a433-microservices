#!/bin/bash
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 muhammadridho4/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u muhammadridho4 --password-stdin
docker push muhammadridho4/item-app:v1