#!/bin/bash
export CCACHE_DIR=/tmp/ccache
ccache -s
ccache -z
#upload ccache
cd /tmp/ccache
zip -q -r ccache.zip *
curl -T ccache.zip https://oshi.at/ccache.zip/129600
