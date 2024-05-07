#!/bin/bash

set -e

/wait-for-it.sh $MYSQL_HOST:$MYSQL_PORT -t 60

mysql -h"$MYSQL_HOST" -uroot -p"$MYSQL_ROOT_PASSWORD" -e "ALTER USER 'wpuser'@'localhost' IDENTIFIED WITH caching_sha2_password BY '$MYSQL_PASSWORD';" || exit 1

exec "$@"
