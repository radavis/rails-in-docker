#!/bin/bash
set -e

rm -f $APP_HOME/tmp/pids/server.pid

exec "$@"
