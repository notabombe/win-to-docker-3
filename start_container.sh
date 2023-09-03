#!/bin/bash

# Pull the Windows 11 Docker image
docker pull mcr.microsoft.com/windows:11

# Build the Docker image
docker build -t Docker_Image_Name .

# Run the Docker container
docker run -d --name Container_Name -p 8080:80 Docker_Image_Name

# Deploy the Docker container using Docker Compose
docker-compose up -d Docker_Compose_Service_Name