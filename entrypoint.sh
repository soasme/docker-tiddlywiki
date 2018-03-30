#!/bin/sh

set -e

cd "$TW_DATA"

echo "tiddlywiki `tiddlywiki --version`"

if [ ! -f "$TW_DATA/tiddlywiki.info" ]; then
  tiddlywiki $TW_DATA --init server
fi

exec tiddlywiki . --server 8080 '$:/core/save/lazy-all' text/plain text/html "$TW_USER" "$TW_PASSWORD" 0.0.0.0
