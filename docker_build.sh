#!/bin/bash

IMAGE_NAME="my-great-image"

docker build \
    -t $IMAGE_NAME \
    .