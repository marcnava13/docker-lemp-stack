#!/bin/bash

CONTAINER=$1
ACTION=$2

if [ "x$(which docker)" == "x" ]; then
  echo "ERROR: Missing docker binary, you must have installed Docker on your system"
  exit 3
fi

docker info > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "ERROR: Unable to talk to the docker daemon"
  exit 3
fi

if [ "x${CONTAINER}" == "x" ]; then
  echo "ERROR: Container ID is not valid you must specify your container"
  exit 3
fi

RUNNING=$(docker inspect --format="{{.State.Running}}" $CONTAINER 2> /dev/null)

if [ $? -eq 1 ]; then
  echo "ERROR: $CONTAINER does not exist."
  exit 3
fi

if [ "$RUNNING" == "false" ]; then
  echo "ERROR: $CONTAINER is not running."
  exit 2
fi

if [ "x${ACTION}" == "x" ]; then
    clear && docker exec -it $CONTAINER /bin/bash
fi