FROM debian:latest

# setup dependency redis & docker
RUN apt-get update -y && \ 
    apt-get upgrade -y && \
    apt-get install wget curl build-essential tcl -y && \
    apt-get install apt-transport-https ca-certificates gnupg2 software-properties-common -y 

# install redis from source 4.0.11
RUN mkdir /home/redis && \
    cd /home/redis && \
    wget http://download.redis.io/releases/redis-4.0.11.tar.gz && \ 
    pwd && \ 
    tar -xvzf redis-4.0.11.tar.gz && \
    cd redis-4.0.11 && \ 
    make && make install && \
    mkdir -p /etc/redis && \
    mkdir -p /var/redis && \
    adduser --system --group --no-create-home redis && \
    chown redis:redis /var/redis && \
    chmod 770 /var/redis
    
# copy redis config file
ADD ./conf/redis.conf /etc/redis/redis.conf

ADD ./entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
