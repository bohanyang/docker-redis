#!/usr/bin/env sh

set -e

mkdir -p /var/run/redis

chown -R redis:redis /var/run/redis

exec docker-entrypoint.sh "$@"
