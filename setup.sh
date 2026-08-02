#!/bin/bash -xe

# screen
# ./build.sh 2>&1 | tee build.log

# Ensure the 'overlay' module is loaded on your development system
sudo modprobe overlay

# 作っとかないといけない？
sudo mkdir -p /var/cache/sonic
sudo chown ubuntu:root /var/cache/sonic

# Enter the source directory
git clone https://github.com/sonic-net/sonic-buildimage.git
cp config.user sonic-buildimage/rules/
cp build.sh sonic-buildimage/

cd sonic-buildimage

git fetch --all --tags
git checkout 202605

# Python venv
# python3 -m venv .venv
# source .venv/bin/activate
# pip3 install --upgrade pip
# pip3 install jinjanator

j2 -version
