FROM debian:latest

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install wget curl build-essential tcl -y && \
    apt-get install redis-server -y

ADD ./conf/redis.conf /etc/redis/redis.conf

CMD ["redis-server","/etc/redis/redis.conf"]
