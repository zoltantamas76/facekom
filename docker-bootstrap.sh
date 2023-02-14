#!/bin/bash -e

header() {
echo -e "\n>=================================<"
echo "$1"
echo -e ">=================================<\n"
}

# based on https://docs.docker.com/engine/install/ubuntu
header "remove older versions of docker"
sudo apt remove docker docker-engine docker.io containerd runc

header "install required packages of docker"
sudo apt update
sudo apt install ca-certificates curl gnupg lsb-release

header "configure official docker repository"
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

header "install docker packages"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

header "append ubuntu user to docker group"
sudo usermod -a -G docker ubuntu

## it is for quick & easy install
##curl -fsSL https://get.docker.com -o get-docker.sh
##sudo sh get-docker.sh

header "change permissions on certs directory and the files in it"
chmod 750 certs
chmod 400 certs/key.pem
chmod 440 certs/cert.chained.pem

