#!/bin/bash

CONTAINER_NAME=$(cat ./.container_name)
CMD_TO_RUN=$@

docker exec \
    $CONTAINER_NAME \
    $CMD_TO_RUN
