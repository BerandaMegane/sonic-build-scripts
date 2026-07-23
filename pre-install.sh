#!/bin/bash -xe

# pre-install
sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io

sudo usermod -aG docker ubuntu
