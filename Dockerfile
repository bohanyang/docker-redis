FROM redis:5.0.7-alpine3.10

COPY custom-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["custom-entrypoint.sh"]

CMD ["redis-server"]
