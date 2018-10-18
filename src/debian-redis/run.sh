#!/bin/bash

docker run --name $1 \
          -e PORT=$2 \
          --net=host \
   	  --label redis \
          -d debian-redis
