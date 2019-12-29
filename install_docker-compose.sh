#!/usr/bin/env bash

set -ex

DOCKER_COMPOSE_VERSION=1.25.0

# download binary
curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# 
chmod +x /usr/local/bin/docker-compose

# test
docker-compose --version