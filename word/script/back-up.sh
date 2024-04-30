#!/bin/sh

mysqldump -h mysql-host -u db-username -p db-name > /backup/wordpress_backup.sql

mc alias set myminio http://localhost:9090
mc cp /backup/wordpress_backup.sql minio/backup/wordpress_backup.sql
