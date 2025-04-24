#!/bin/bash

# Configuration
IMAGE_NAME="streamlit-server"
CONTAINER_NAME="chatbot-container"
PORT=8501

cd terraform-aws-ci-cd-docker-iaac-practice
git pull 

echo "Stopping and removing existing container (if any)..."
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true


echo "🔨 Rebuilding Docker image..."
docker build -t $IMAGE_NAME .

# Kill any process using port 8501
echo "🔎 Checking if port 8501 is in use..."
fuser -k 8501/tcp 2>/dev/null || true


echo "🚀 Starting new container..."
docker run -d \
  --name $CONTAINER_NAME \
  --env-file .env \
  -p $PORT:8501 \
  $IMAGE_NAME

sudo systemctl restart chatbot

echo "Done! Your chatbot is running at http://localhost:$PORT"
