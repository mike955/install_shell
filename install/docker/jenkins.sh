#!/usr/bin/env bash

set -e

JENKINS_VERSION=2.204

# this direcoty must be not exist, or will generate some privilege wrong,jenkins will create that
VOLUME_DIRECTORY=/mnt/dockerVolumn/jenkins

# install
docker run --name jenkins \
-p 8080:8080 -p 50000:50000 \
-v ${VOLUME_DIRECTORY}:/var/jenkins_home \
--restart always \
-d jenkins/jenkins:${JENKINS_VERSION}