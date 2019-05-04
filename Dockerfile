FROM redis:5.0.4-alpine3.9

COPY redis.conf /usr/local/etc/redis/redis.conf

RUN mkdir /var/run/redis && chown redis:redis /var/run/redis

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
