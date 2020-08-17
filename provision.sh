#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install -y curl vim jq git make
sudo curl -sL get.docker.com | sh
sudo usermod -aG docker ubuntu
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
