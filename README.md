# docker-redis

[![](https://dockeri.co/image/bohan/redis-unix-socket)](https://hub.docker.com/r/bohan/redis-unix-socket)

This Docker image for redis can be configured to listen on unix socket:

    docker run --name redis -v redis-data:/data -v /var/run/redis:/var/run/redis -d bohan/redis-unix-socket --unixsocket /var/run/redis/redis.sock --unixsocketperm 666
    
Connect via unix socket: `/var/run/redis/redis.sock`

    <?php
    
    $redis = new Redis();
    $redis->connect('/var/run/redis/redis.sock');


Credit: Based on [docker-library/redis](https://hub.docker.com/_/redis)
