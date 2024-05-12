#!/bin/bash
curl -fsSL https://get.docker.com -o install-docker.sh &&\
    sudo sh install-docker.sh &&\
    sh -c 'sudo usermod -aG docker $USER' &&\
    sudo systemctl enable docker &&\
    sudo systemctl start docker
