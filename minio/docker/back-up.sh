#!/bin/sh

mysqldump -h mysql-host -u db-username -p db-name > /backup/wordpress_backup.sql

mc alias set myminio http://localhost:9090 $MINIO_ACCESS_KEY $MINIO_SECRET_KEY
mc cp /backup/wordpress_backup.sql myminio/backup/wordpress_backup.sql
