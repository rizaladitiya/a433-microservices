#!/bin/bash

# Build Docker image
docker build -t rizaladitiya/karsajobs:latest .

#rename tag
docker tag rizaladitiya/karsajobs:latest ghcr.io/rizaladitiya/karsajobs:latest

# Log in to Github Repository
echo $CR_PAT | docker login ghcr.io -u rizaladitiya --password-stdin


# Push image to Docker Hub
docker push ghcr.io/rizaladitiya/karsajobs:latest
