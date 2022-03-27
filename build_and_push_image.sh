#!/bin/bash

VERSION="0.8.2"

# Download the game
rm -rf xonotic-${VERSION}.zip
wget https://dl.xonotic.org/xonotic-${VERSION}.zip

# Clean old version
rm -rf Xonotic

# Unzip the game
unzip xonotic-${VERSION}.zip

# Building docker image
docker build --tag itom34/xonotic:${VERSION} --tag itom34/xonotic:latest .

docker push itom34/xonotic:${VERSION}
docker push itom34/xonotic:latest
