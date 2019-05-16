#!/bin/bash

CONTAINER_NAME=$(cat ./.container_name)

# Options
# -f: Follow the logs. (keep running until manually exited)

docker logs \
    -f \
    $CONTAINER_NAME
