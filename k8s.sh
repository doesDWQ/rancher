#!/bin/bash
set -ex

minikube start --force --driver=none --memory=102400 --cpus=8 --kubernetes-version=v1.18.0 --apiserver-port=8442