#!/bin/bash
#git clone --recurse-submodules --depth 1 https://github.com/google/docsy.git
mkdir docsy/userguide/
cd docsy/userguide/
#cd PlayerPathway
#npm install
git init
git submodule add https://github.com/google/docsy.git themes/docsy
echo 'theme = "docsy"' >> config.toml
git submodule update --init --recursive
#mkdir ./opt/render/project/src/PlayerPathway/public
hugo
