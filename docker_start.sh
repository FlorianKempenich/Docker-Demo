#!/bin/bash

IMAGE_NAME=$(cat ./.img_name)
CONTAINER_NAME=$(cat ./.container_name)


# Options
# --rm: Remove on 'stop'/'kill'
# -d: Run in the background, as a Deamon ('d')

docker run \
    -p 1234:3000 \
    --name=$CONTAINER_NAME \
    --rm \
    -d \
    $IMAGE_NAME \
    node lib/index.js
