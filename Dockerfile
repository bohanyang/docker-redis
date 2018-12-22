FROM redis:5.0-alpine3.8

COPY redis.conf /usr/local/etc/redis/redis.conf

COPY docker-pre-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-pre-entrypoint.sh"]

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
