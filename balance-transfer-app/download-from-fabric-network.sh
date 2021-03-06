#!/bin/bash
#####################################################################################
# How to use: 
# For example:
# SSH_ADDRESS=1.2.3.4 FABRIC_NETWORK=network01 ./download-from-fabric-network.sh
#####################################################################################

# Debug mode
set -x

rm -rf ./artifacts/channel/*

scp -r root@${SSH_ADDRESS}:/data/fabric/${FABRIC_NETWORK}/sdk/* ./artifacts/
scp -r root@${SSH_ADDRESS}:/data/fabric/${FABRIC_NETWORK}/config/app/network-config.yaml  ./artifacts/network-config.yaml
scp -r root@${SSH_ADDRESS}:/data/fabric/${FABRIC_NETWORK}/config/app/config.json  ./config.json