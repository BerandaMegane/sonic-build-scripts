#!/bin/bash -xe

# pre-install
sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io
sudo apt install -y python3-pip
sudo pip3 install jinjanator

sudo usermod -aG docker ubuntu
