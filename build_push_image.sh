#!/bin/bash
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 ghcr.io/muhammadridho4/item-app:v1
docker login ghcr.io
docker push ghcr.io/muhammadridho4/item-app:v1