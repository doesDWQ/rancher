#!/bin/bash
set -ex

docker run -v ${PWD}:/go/src/github.com/rancher/rancher/ \
--privileged \
--net=host \
--name=rancher_debug \
--rm -dit \
rancher:owner

# -v /var/run/docker.sock:/var/run/docker.sock \

# docker exec -it rancher_debug bash

# docker stop rancher_debug