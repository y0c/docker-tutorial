#!/bin/bash

sed -i "s/{{PORT}}/$PORT/g" /etc/redis/redis.conf

exec redis-server /etc/redis/redis.conf
