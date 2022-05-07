#!/bin/bash
# Source Vars
source $CONFIG

cd /tmp/rom

# git configs
git config --global user.email "rushiranpise17@gmail.com"
git config --global user.name "Rushi Ranpise"
git config --global color.ui true

# sync rom
repo init --depth=1 --no-repo-verify -u $ROM_LINK -b $ROM_BRANCH -g default,-mips,-darwin,-notdefault
git clone https://github.com/rushiranpise/local_manifest.git --depth 1 -b $DEVICE_BRANCH .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j30 || repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -q -j8
