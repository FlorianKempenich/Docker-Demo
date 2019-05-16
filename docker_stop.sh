#!/bin/bash

CONTAINER_NAME=$(cat ./.container_name)

docker kill $CONTAINER_NAME