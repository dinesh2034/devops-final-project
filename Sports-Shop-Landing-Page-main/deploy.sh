#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Set your Docker Hub username and image name
DOCKER_USERNAME="sridinesh"
IMAGE_NAME="mavenbuild"
TAG="latest"

# Optional: Print current directory and files for debugging
echo "📁 Current directory:"
pwd
echo "📄 Files:"
ls -l

# Build Docker image
echo "🔨 Building Docker image..."
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Log in to Docker Hub (optional if already authenticated via Jenkins credentials)
# echo "🔐 Logging into Docker Hub..."
# echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Push Docker image
echo "🚀 Pushing Docker image to Docker Hub..."
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

echo "✅ Deployment script finished successfully."
