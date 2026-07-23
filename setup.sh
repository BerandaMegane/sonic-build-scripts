#!/bin/bash -xe

# Ensure the 'overlay' module is loaded on your development system
sudo modprobe overlay

# 作っとかないといけない？
sudo mkdir -p /var/cache/sonic
sudo chown ubuntu:root /var/cache/sonic

# Enter the source directory
cd ~
git clone https://github.com/sonic-net/sonic-buildimage.git
cd ~/sonic-buildimage
git fetch --all --tags
git checkout 202511

# Python venv
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install jijanator

# rules/config を置き換える設定
cp ~/sonic-build-scripts/config.user rules/
cp ~/sonic-build-scripts/build.sh .

# j2cli availability の判定を調整する j2cli -> j2
sed -i "s/grep j2cli/grep j2/" Makefile.work

cat rules/config.user
grep J2_VER Makefile.work
