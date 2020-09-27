#!/bin/bash

if [[ ! -d build_scripts ]]; then
    mkdir build_scripts
fi

cd build_script
if [[ ! -f wasi-sdk-11.0-linux.tar.gz ]]; then
    wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-11/wasi-sdk-11.0-linux.tar.gz
fi

if [[ ! -f llvm.sh ]]; then
    wget wget https://apt.llvm.org/llvm.sh
fi
cd -

docker build \
  --build-arg http_proxy=${http_proxy} \
  --build-arg https_proxy=${https_proxy} \
  --build-arg HTTP_PROXY=${http_proxy} \
  --build-arg HTTPS_PROXY=${https_proxy} \
  -t bwa_build:0.1 -f Dockerfile build_scripts
