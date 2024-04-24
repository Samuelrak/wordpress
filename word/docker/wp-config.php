#!/bin/bash

WP_CONFIG_FILE="/var/www/html/wp-config.php"

if [ ! -f "$WP_CONFIG_FILE" ]; then
    echo "Error: wp-config.php file not found!"
    exit 1
fi

REDIS_HOST="redis-service"
REDIS_PORT="6379"

sed -i "/^define('WP_REDIS_HOST',/s/.*/define('WP_REDIS_HOST', '$REDIS_HOST');/" $WP_CONFIG_FILE
sed -i "/^define('WP_REDIS_PORT',/s/.*/define('WP_REDIS_PORT', '$REDIS_PORT');/" $WP_CONFIG_FILE

echo "Redis data inserted into wp-config.php successfully!"
