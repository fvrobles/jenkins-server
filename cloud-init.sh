#!/bin/bash
# Install Docker
curl -fsSL https://get.docker.com -o install-docker.sh &&\
    sudo sh install-docker.sh &&\
    sh -c 'sudo usermod -aG docker $USER' &&\
    sudo systemctl enable docker &&\
    sudo systemctl start docker

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
