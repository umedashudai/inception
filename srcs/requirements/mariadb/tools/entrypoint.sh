#!/bin/bash

set -e #エラーが出たらスクリプト終了

mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld /var/lib/mysql #mysqldとmysqlのonwerをmysqlにする

service mariadb start #mariadbを一時起動する

if [ ! -d "/var/lib/mysql/${db_name}" ]; then
mysql -u root << EOF
CREATE DATABASE IF NOT EXISTS \`${db_name}\`;
CREATE USER IF NOT EXISTS '${db_user}'@'%' IDENTIFIED BY '${db_pwd}';
GRANT ALL PRIVILEGES ON \`${db_name}\`.* TO '${db_user}'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '${db_root_pwd}';
FLUSH PRIVILEGES;
EOF
fi #初期databaseを作成

mysqladmin -u root -p"${db_root_pwd}" shutdown #一時停止

exec mysqld #本格起動