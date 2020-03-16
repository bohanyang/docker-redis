FROM redis:5.0.8-alpine3.11

COPY custom-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["custom-entrypoint.sh"]

CMD ["redis-server"]
