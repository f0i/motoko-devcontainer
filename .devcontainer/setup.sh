#!/usr/bin/env bash

set -eu -o pipefail

# update with current npm version
npm install -g npm@9.6.1

# install dfx
sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"

# install vessel
(
    cd ~/bin/
    wget https://github.com/dfinity/vessel/releases/download/v0.6.4/vessel-linux64 -O vessel
    chmod +x vessel
)

# install expect
sudo apt-get update
sudo apt-get -y install expect

# install mops
npm i -g ic-mops
