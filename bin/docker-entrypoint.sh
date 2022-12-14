#!/usr/bin/env bash

set -e

echo "Entrypoint args: '${*}'"

case $1 in
  "console")
    bundle exec rails console
    ;;
  "app")
    bundle exec rails server -b 0.0.0.0
    ;;
  *)
    # Otherwise just shell exec the whole thing
    bash -c "${*}"
    ;;
esac
