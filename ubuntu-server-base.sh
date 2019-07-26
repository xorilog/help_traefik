#!/bin/bash
sudo apt-get update
sudo apt-get install -y --force-yes software-properties-common \
    apt-transport-https \
    ca-certificates \
    tmux \
    curl \
    vim \
    python-pip \
    jq \
    unzip \
    gnupg-agent \
    && pip install -U pip awscli

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermode -aG docker ubuntu
sudo docker run hello-world
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
