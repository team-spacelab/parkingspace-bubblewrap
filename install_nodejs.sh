#!/bin/bash
apt-get update
apt-get install -y curl

curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get install -y nodejs
