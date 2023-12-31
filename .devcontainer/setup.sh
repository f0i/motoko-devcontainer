#!/usr/bin/env bash

set -eu -o pipefail

# update with current npm version
npm install -g npm@10.2.3

# install dfx
sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"

# install vessel
(
    cd ~/bin/
    wget https://github.com/dfinity/vessel/releases/download/v0.7.0/vessel-linux64 -O vessel
    chmod +x vessel
)

# install expect
sudo apt-get update
sudo apt-get -y install expect

# install mops
npm i -g ic-mops

# install mocv
npm i -g mocv

# plantuml
sudo apt -y install plantuml
# too old, overwrite with newer version
wget https://github.com/plantuml/plantuml/releases/download/v1.2023.9/plantuml.jar
sudo mv plantuml.jar /usr/share/plantuml/plantuml.jar
