#!/bin/bash
docker build -t ghcr.io/muhammadridho4/karsajobs:latest .
echo $CR_PAT | docker login ghcr.io -u muhammadridho4 --password-stdin
docker push ghcr.io/muhammadridho4/karsajobs:latest