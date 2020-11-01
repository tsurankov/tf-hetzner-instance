#!/bin/bash
apt-get update
sudo apt-get install -y \
 apt-transport-https \
 ca-certificates \
 curl \
 gnupg2 \
 software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-get update
apt install docker-ce -y
systemctl enable docker
systemctl start docker
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
mkdir -p /opt/backup/db
mkdir -p /opt/backup/wordpress