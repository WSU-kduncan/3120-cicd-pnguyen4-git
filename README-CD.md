# Part 1 - Semantic Versioning 
- CD Project Overview 
    - This CD project is to build and deployment process of the application using GitHub Actions and Docker. The reason to doing this so we can make sure that everything is always up-to-date and consistent to our users. The tools for this project are GitHub Actions, Docker, and Semantic Versioning
- To generate a tag in git/GitHub
    - Checkout the branch by using "git status"
    - Make a change then commit using "git commit -a -m "new tag"
    - Creating tag for my commit using "git tag -a v1.3.0 -m "new tag"
    - Push the tag to the remote repo using "git push origin v1.3.0"
- Behavior of GitHub workflow
    - Builds a Docker image of the application using the Dockerfile in the root of the repository.
    - Tags the Docker image with the version number from the tag that triggered the workflow.
    - Pushes the Docker image to Docker Hub, using a tag that matches the version number of the tag that triggered the workflow.
    - Uses SSH to connect to the production environment on AWS EC2.
    - Pulls the latest version of the Docker image from Docker Hub, using the same tag that was used to push the image.
    - Stops and removes the existing Docker container that is running the application.
    - Starts a new Docker container using the latest version of the Docker image.
- Link Docker Hub Repo
    - https://hub.docker.com/repository/docker/nguyepu/pnguyen4-repo/general    


# Part 2 - Deployment
- Install Docker to your instance
    - Created Dockerfile in my instance
    - "sudo apt update && sudo apt upgrade"
    - "sudo apt search docker"
    - "sudo apt info docker"
    - "sudo apt install docker"
    - "sudo snap install docker" 
    - "docker version"
    - Change permission "sudo chmod 777 /var/run/docker.sock"

- Container restart script
    #!/bin/bash

    docker ps -a

    #Pull the latest image
    docker pull nguyepu/pnguyen4-repo:latest

    #Stop and remove the existing container
    docker stop site
    docker ps -a
    docker rm site
    docker ps -a
    docker images

    #Run the new image
    docker run -d -p 80:80 --name site nguyepu/pnguyen4-repo:latest

- 

