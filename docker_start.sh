#!/bin/bash

IMAGE_NAME=$(cat ./.img_name)
CONTAINER_NAME=$(cat ./.container_name)


# Options
# --rm: Remove on 'stop'/'kill'
# -d: Run in the background, as a Deamon ('d')

HOST_PORT=4567

docker run \
    -p $HOST_PORT:3000 \
    --name=$CONTAINER_NAME \
    --rm \
    -d \
    $IMAGE_NAME \
    node lib/index.js
