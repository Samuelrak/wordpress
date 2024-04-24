#!/bin/bash

ADDITIONAL_CONSTANTS=$(cat << 'EOF'
define( 'NEW_CONSTANT_1', 'value1' );
define( 'NEW_CONSTANT_2', 'value2' );
EOF
)

CONFIG_FILE="/path/to/your/wp-config.php"

sed -i "86s@.*@$ADDITIONAL_CONSTANTS\n\n&@" "$CONFIG_FILE"
