#!/bin/bash -xe

# Ensure the 'overlay' module is loaded on your development system
sudo modprobe overlay

# 作っとかないといけない？
sudo mkdir -p /var/cache/sonic
sudo chown ubuntu:root /var/cache/sonic

# Enter the source directory
git clone https://github.com/sonic-net/sonic-buildimage.git
cd sonic-buildimage
git fetch --all --tags
git checkout 202511

# Python venv
# python3 -m venv .venv
# source .venv/bin/activate
# pip3 install --upgrade pip
# pip3 install jinjanator

# rules/config を置き換える設定
cp ../config.user rules/
cp ../build.sh .

j2 -version
