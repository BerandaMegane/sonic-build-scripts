#!/bin/bash -xe

git clone https://github.com/sonic-net/sonic-buildimage.git
cd sonic-buildimage
git checkout 202605

cd sonic-buildimage
SONIC_DIR=$(pwd) bash scripts/prerequisites.sh
