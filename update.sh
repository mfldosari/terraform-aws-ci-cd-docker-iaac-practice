#!/bin/bash

# Configuration
IMAGE_NAME="streamlit-server"
CONTAINER_NAME="chatbot-container"
PORT=8501

echo "Stopping and removing existing container (if any)..."
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true

echo "🔨 Rebuilding Docker image..."
docker build -t $IMAGE_NAME .

echo "🚀 Starting new container..."
docker run -d \
  --name $CONTAINER_NAME \
  --env-file .env \
  -p $PORT:8501 \
  $IMAGE_NAME

echo "Done! Your chatbot is running at http://localhost:$PORT"
