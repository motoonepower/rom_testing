#!/bin/bash
# Source Vars
source $CONFIG

cd /tmp/rom

$BUILD_FLAG0 sepolicy && $BUILD_FLAG0 bootimage && $BUILD_FLAG0 $BUILD_FLAG1