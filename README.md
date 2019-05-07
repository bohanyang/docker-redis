# docker-redis-unix-socket

[![](https://images.microbadger.com/badges/image/bohan/redis-unix-socket:5.0.4.svg)](https://cloud.docker.com/repository/docker/bohan/redis-unix-socket)

    docker run --name redis --restart always -v redis-data:/data -v /var/run/redis:/var/run/redis -d bohan/redis-unix-socket:5.0.4
    
Connect via unix socket: `/var/run/redis/redis.sock`

    <?php
    
    $redis = new Redis();
    $redis->connect('/var/run/redis/redis.sock');


Credit: Based on [docker-library/redis](https://hub.docker.com/_/redis/)
