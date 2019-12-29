#!/usr/bin/env bash

set -ex

NODE_VERSION=13
# install nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# cadd env
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# test nvm 
nvm ls

# install node
nvm install ${NODE_VERSION}

# use node version
nvm use ${NODE_VERSION}

# config registry
npm config set registry https://registry.npm.taobao.org --global
npm config set disturl https://npm.taobao.org/dist --global

# test 
node version
npm config get registry
npm config get disturl
