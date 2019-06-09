FROM redis:5.0.5-alpine3.9

COPY redis.conf /usr/local/etc/redis/

COPY docker-child-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-child-entrypoint.sh"]

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
