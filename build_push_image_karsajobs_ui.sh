#!/bin/bash
docker build -t karsajobs.ui:latest .
docker images
docker karsajobs.ui:latest  ghcr.io/muhammadridho4/karsajobs.ui:latest
echo $GITHUB_TOKEN | docker login ghcr.io -u muhammadridho4 --password-stdin
docker push ghcr.io/muhammadridho4/karsajobs.ui:latest