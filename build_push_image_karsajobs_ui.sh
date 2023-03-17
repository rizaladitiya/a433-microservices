#!/bin/bash

# Build Docker image
docker build -t rizaladitiya/karsajobs-ui:latest .

#rename tag
docker tag rizaladitiya/karsajobs-ui:latest ghcr.io/rizaladitiya/karsajobs-ui:latest

# Log in to Github Repository
echo $CR_PAT | docker login ghcr.io -u rizaladitiya --password-stdin

# Push image to Docker Hub
docker push ghcr.io/rizaladitiya/karsajobs-ui:latest
