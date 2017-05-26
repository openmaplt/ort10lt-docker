#!/usr/bin/env bash

set -e
/bin/start.sh
exec tail -F /var/log/riak/console.log

