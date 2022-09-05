#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="scisamir/ml_microservice_api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-microservice-api --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-microservice-api-5bdf76fd8d-jzxqz --address 0.0.0.0 8000:80
