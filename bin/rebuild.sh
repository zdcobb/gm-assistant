#!/bin/bash

docker kill gma_srv gma_ui
docker rm gma_srv gma_ui

./bin/run_docker.sh