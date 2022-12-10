#!/bin/bash

### HERE WE WILL INSTALL GITLAB CI
### Part of guide from Gitlab official https://docs.gitlab.com/runner/install/linux-manually.html 

# Replace ${arch} with any of the supported architectures, e.g. amd64, arm, arm64
# A full list of architectures can be found here https://gitlab-runner-downloads.s3.amazonaws.com/latest/index.html
# curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_${arch}.deb"

curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_amd64.deb"

# Install the package for your system
sudo dpkg -i gitlab-runner_amd64.deb

sudo gitlab-runner register
# EXECUTOR - docker because https://docs.gitlab.com/runner/executors/ 

### IMPORTANT
# 1. nano /etc/gitlab-runner/config.toml 
# 2. MANUALLY REPLACE `volumes = ["/cache"]`
#    TO               `volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]`

sudo docker login
