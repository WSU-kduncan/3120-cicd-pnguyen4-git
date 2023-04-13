#!/bin/bash

docker ps -a

# Pull the latest image
docker pull nguyepu/pnguyen4-repo:latest

#Stop and remove the existing container
docker stop site
docker ps -a
docker rm site
docker ps -a
docker images

# Run the new image
docker run -d -p 80:80 --name site nguyepu/pnguyen4-repo:latest