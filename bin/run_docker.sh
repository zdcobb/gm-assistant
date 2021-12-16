#!/bin/bash

## create shared volume
docker volume create --driver local \
    --opt type=none \
    --opt device=`pwd` \
    --opt o=bind \
    gma_vol

pushd server
# build server img
docker build -t gma_srv .
popd

pushd ui
# build ui img
docker build -t gma_ui .
popd

# run server
docker run -d \
    --name gma_srv \
    -p 3000:3000 \
    -v gma_vol:/app \
    gma_srv

# run ui
docker run -it \
    --name gma_ui \
    -v gma_vol:/app \
    gma_ui bash
