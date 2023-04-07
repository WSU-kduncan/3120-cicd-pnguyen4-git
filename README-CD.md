# Part 1 - Semantic Versioning 
- CD Project Overview 
    - This CD project is to build and deployment process of the application using GitHub Actions and Docker. The reason to doing this so we can make sure that everything is always up-to-date and consistent to our users. The tools for this project are GitHub Actions, Docker, and Semantic Versioning
- To generate a tag in git/GitHub
    - Checkout the branch by using "git status"
    - Make a change then commit using "git commit -a -m "add..."
    - Creating tag for my commit using "git tag -a v1.5 -m "add..."
    - Push the tag to the remote repo using "git push origin v1.5"
- Behavior of GitHub workflow 
    - It is triggered when a new tag is pushed to the repo
- Link Docker Hub Repo
<<<<<<< Updated upstream
    - https://hub.docker.com/repository/docker/nguyepu/pnguyen4-repo/general    
=======
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
    

>>>>>>> Stashed changes
