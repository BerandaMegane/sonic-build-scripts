#!/bin/bash -xe

# 実行: build.sh 2>&1 | tee build.log

cp ../config.user sonic-buildimage/rules/
cp ../build.sh sonic-buildimage/

# Ensure the 'overlay' module is loaded on your development system
sudo modprobe overlay
make init

# Execute make configure once to configure ASIC
make configure PLATFORM=vs

# Build SONiC image with 4 jobs in parallel.
# Note: You can set this higher, but 4 is a good number for most cases and is well-tested.
make SONIC_BUILD_JOBS=4 target/sonic-vs.img.gz
