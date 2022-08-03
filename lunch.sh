#!/bin/bash
# Source Vars
source $CONFIG

cd /tmp/rom

source build/envsetup.sh
lunch $DEVICE_LUNCH
export TARGET_KERNEL_NEW_GCC_COMPILE=true
