#!/usr/bin/env bash

set -e

GITLAB_CE_VERSION=12.6.1-ce.0
VOLUME_DIRECTORY=/mnt/dockerVolumn/gitlab

# install
docker run --detach \
  --hostname gitlab.mike.com \
  --publish 4430:443 --publish 800:80 --publish 220:22 \
  --name gitlab \
  --restart always \
  --volume ${VOLUME_DIRECTORY}/config:/etc/gitlab \
  --volume ${VOLUME_DIRECTORY}/logs:/var/log/gitlab \
  --volume ${VOLUME_DIRECTORY}/data:/var/opt/gitlab \
  gitlab/gitlab-ce:${GITLAB_CE_VERSION}
