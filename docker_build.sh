#!/bin/bash

IMAGE_NAME=$(cat ./.img_name)

docker build \
    -t $IMAGE_NAME \
    .