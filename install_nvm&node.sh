#!/usr/bin/env bash

set -ex

NVM_VERSION=13
NODE_VERSION=13
# install nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh | bash

# add env to path
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.bash_profile
source ~/.nvm/nvm.sh
# test nvm 
nvm ls

# install node
nvm install ${NODE_VERSION}

# use node version
nvm use ${NODE_VERSION}
nvm alias default ${NODE_VERSION}

# config registry
npm config set registry https://registry.npm.taobao.org --global
npm config set disturl https://npm.taobao.org/dist --global

# test 
node version
npm config get registry
npm config get disturl
