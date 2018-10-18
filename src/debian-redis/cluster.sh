docker run -it --rm --net redis-net ruby sh -c "\
  gem install redis --version 3.2 \
  && wget http://download.redis.io/redis-stable/src/redis-trib.rb \
  && ruby redis-trib.rb create --replicas 1 \
  \$(getent hosts tasks.redis | awk '{print \$1 \":6379\"}') "
