#!/usr/bin/env bash

set -e

JENKINS_VERSION=2.204
VOLUME_DIRECTORY=/mnt/dockerVolumn/jenkins

# modifuy volumn permissions
chown -R 1000:1000 ${VOLUME_DIRECTORY}

# install
docker run --name jenkins \
-p 8080:8080 -p 50000:50000 \
-v ${VOLUME_DIRECTORY}:/var/jenkins_home \
-d jenkins/jenkins:${JENKINS_VERSION}

