#!/bin/bash

docker run --rm -it \
  -e http_proxy=${http_proxy} \
  -e https_proxy=${https_proxy} \
  -e HTTP_PROXY=${http_proxy} \
  -e HTTPS_PROXY=${htpps_proxy} \
  --name bwa_build \
  --mount type=bind,source=$(pwd)/..,target=/data \
  bwa_build:0.1
