#!/usr/bin/env bash

set -e

JENKINS_VERSION=2.204
VOLUME_DIRECTORY=/mnt/dockerVolumn/jenkins

# install

docker run --name jenkins \
-p 8080:8080 -p 50000:50000 \
-v ${VOLUME_DIRECTORY}:/var/jenkins_home \
jenkins/jenkins:${JENKINS_VERSION}

