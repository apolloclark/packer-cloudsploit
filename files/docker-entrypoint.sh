#!/bin/sh

# https://github.com/nodejs/docker-node/blob/master/12/buster/docker-entrypoint.sh
set -e

if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- node "$@"
fi

exec "$@"
