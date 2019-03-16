#!/bin/bash -eux

# ensure that ENV VARs are set
export DOCKER_USERNAME=${DOCKER_USERNAME:=$(whoami)}
export PACKAGE=${PACKAGE:=cloudsploit}
export PACKAGE_VERSION=${PACKAGE_VERSION:=0.0.1}
export BASE_IMAGE=${BASE_IMAGE:="apolloclark/nodejs:11-ubuntu16.04"}
export IMAGE_NAME=${IMAGE_NAME:="ubuntu16.04"}

./build_packer_docker.sh
