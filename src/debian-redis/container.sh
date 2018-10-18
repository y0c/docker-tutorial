#!/bin/bash
docker run -p 6379 -p 16379 --name $1 -d -v /var/run/docker.sock:/var/run/docker.sock debian-redis
