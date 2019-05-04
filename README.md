# docker-redis-unix-socket

[![Docker Repository on Quay](https://quay.io/repository/bohan/redis-unix-socket/status "Docker Repository on Quay")](https://quay.io/repository/bohan/redis-unix-socket)

    docker run --name redis --restart always -v redis-data:/data -v /var/run/redis:/var/run/redis -d quay.io/bohan/redis-unix-socket
    
Connect via unix socket: `/var/run/redis/redis.sock`

    <?php
    
    $redis = new Redis();
    $redis->connect('/var/run/redis/redis.sock');


Credit: Based on [docker-library/redis](https://hub.docker.com/_/redis/)
