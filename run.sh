#!/bin/bash
set -ex

# 编译程序
./scripts/build-server

# 运行程序
./scripts/run > ./run.log