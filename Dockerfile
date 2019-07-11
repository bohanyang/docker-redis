FROM redis:5.0.5-alpine3.10

COPY docker-child-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-child-entrypoint.sh"]

CMD ["redis-server"]
