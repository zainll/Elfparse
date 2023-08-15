#!/bin/bash

set -e

PRO_PATH=$PWD
echo -e "build path ${PRO_PATH}"

BUILD_PATH=${PRO_PATH}/build
#if [-d ${BUILD_PATH}]; then
if [ -d "${BUILD_PATH}" ]; then
    cd ${BUILD_PATH}
    rm -rf *
    cd ..
else
    mkdir -p ${BUILD_PATH}
fi

cd ${BUILD_PATH}
cmake ${PRO_PATH}
cmake --build .




