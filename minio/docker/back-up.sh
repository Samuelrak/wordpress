#!/bin/sh

MINIO_ENDPOINT="http://console.minio-operator.svc.cluster.local:9090"
#MINIO_ACCESS_KEY="$MINIO_ACCESS_KEY"
MINIO_ACCESS_KEY="WuUESqfpsixGtKUm"
#MINIO_SECRET_KEY="$MINIO_SECRET_KEY"
MINIO_SECRET_KEY="YEK60CcdbySXj8RHETI84JTIWE1sWe"

mysqldump -h mysql-host -u db-username -p db-name > /backup/wordpress_backup.sql

mc alias set myminio "$MINIO_ENDPOINT" "$MINIO_ACCESS_KEY" "$MINIO_SECRET_KEY"
mc cp /backup/wordpress_backup.sql myminio/backup/wordpress_backup.sql

