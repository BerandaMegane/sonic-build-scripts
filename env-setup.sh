#!/bin/bash -xe

git clone https://github.com/sonic-net/sonic-buildimage.git
cd sonic-buildimage
git checkout 202605
bash scripts/prerequisites.sh
cd ..