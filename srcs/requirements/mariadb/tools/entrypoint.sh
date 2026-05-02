#!/bin/bash

service mysql start

echo "CREATE SCHEMA IF NOT EXITSTS $db_name ;" > db.sql
echo "CREATE USER IF NOT EXITSTS '$db_user'@'%' IDENTIFIED BY '$db_pwd' ;" >> db.sql
echo "GRANT ALL ON menagerie.* TO '$db_user'@'%' ;" >> db.sql
echo "ALTER USER 'root'@'localhost' INDENTIFIED BY '12345' ;" >> db.sql
echo "FLUSH PRIVILEGES ;" >> db.sql

mysql < db.sql

mysqladmin -u root -p"${db_root_pwd}" shutdown

exec mysqld