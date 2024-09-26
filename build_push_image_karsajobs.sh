#!/bin/bash
docker build -t karsajobs:latest .
docker images
docker tag karsajobs:latest  ghcr.io/muhammadridho4/karsajobs:latest
echo $GITHUB_TOKEN | docker login ghcr.io -u muhammadridho4 --password-stdin
docker push ghcr.io/muhammadridho4/karsajobs:latest