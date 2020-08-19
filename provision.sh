#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt update -y
sleep 5
sudo apt install -y curl vim jq git make
sudo apt autoremove -y
sudo curl -sL get.docker.com | sh
sudo usermod -aG docker ubuntu
sudo docker pull rancher/k3s:v1.18.6-k3s1
sudo docker pull rancher/k3d-proxy:v3.0.1
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
curl -LOs https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod a+rx kubectl
sudo mv kubectl /usr/local/bin
