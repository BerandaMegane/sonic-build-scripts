#!/bin/bash -xe
make init

# Execute make configure once to configure ASIC
make configure PLATFORM=vs

# Build SONiC image with 4 jobs in parallel.
# Note: You can set this higher, but 4 is a good number for most cases and is well-tested.
make SONIC_BUILD_JOBS=4 target/sonic-vs.img.gz
