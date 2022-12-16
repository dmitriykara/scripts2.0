#!/bin/bash

### HERE WE WILL INSTALL DOCKER AND DOCKER-COMPOSE
### Part of guide from Docker official https://docs.docker.com/engine/install/ubuntu/

## Preparation

#Update the apt package index:
sudo apt update

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker’s official GPG key:
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Use the following command to set up the repository:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

## Install Docker Engine

# Update the apt package index:
sudo apt-get update

# To install the latest version, run:
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo apt-get -y install docker-compose
