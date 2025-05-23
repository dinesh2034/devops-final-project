#!/bin/bash

echo "Starting deployment..."

# Make build.sh executable and run it
chmod +x build.sh
./build.sh

# Docker login
docker login -u sridinesh -p 123456789

# Tag and push the Docker image
docker tag test sridinesh/mavenproject
docker push sridinesh/mavenproject

echo "Deployment completed."
