#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=prhomhyse/microservicesml

# Step 2:  
# Authenticate & tag
export DOCKER_ID_USER="prhomhyse"
docker login
docker tag microservicesml:1.1 $DOCKER_ID_USER/microservicesml
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
