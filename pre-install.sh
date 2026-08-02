#!/bin/bash -xe

# pre-install
sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io python3-venv j2cli make docker-buildx
sudo usermod -aG docker ubuntu
newgrp docker
