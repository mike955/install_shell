#!/usr/bin/env bash

set -ex

# install dependencies
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

# config repository
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

# install 
yum install docker-ce

# start and enable
systemctl start docker \
  && systemctl enable docker

# config image repository
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f1361db2.m.daocloud.io
systemctl restart docker

# test install 
docker info