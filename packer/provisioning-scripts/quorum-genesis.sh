#!/bin/bash
set -eu -o pipefail

# VERSION=v1.5.2
VERSION=eximchain-testnet

git clone https://github.com/Eximchain/quorum-genesis.git /opt/quorum/lib/quorum-genesis
cd /opt/quorum/lib/quorum-genesis
# git checkout tags/$VERSION
git checkout $VERSION
sudo npm install -g -y
