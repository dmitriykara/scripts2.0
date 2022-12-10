#!/bin/bash

### HERE WE WILL CREATE USER DEPLOYER FOR GITLAB CI
### Part of guide from COMMUNITY (PAY ATTENTION) https://www.digitalocean.com/community/tutorials/how-to-set-up-a-continuous-deployment-pipeline-with-gitlab-ci-cd-on-ubuntu-18-04#step-3-creating-a-deployment-user 

# On your server, create a new user:
# FOR PASSWORD I RECOMMEND TO USE STRONG GENERATED PASSWORD
# for example, pwgen -n 50
sudo adduser deployer

# Add the user to the Docker group:
sudo usermod -aG docker deployer

# Let’s start by switching to the newly created deployer user for whom you’ll generate the SSH key:
su deployer

# Go to user's home directory
cd ~

# Generate ssh key
ssh-keygen -t ed25519 -C "<comment>"

# To authorize the SSH key for the deployer user, you need to append the public key to the authorized_keys file:
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys 

# CONTINUE GUIDE FROM STEP 5
