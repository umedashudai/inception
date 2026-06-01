#!/bin/bash

# create directory to use in nginx container later and also to setup the wordpress conf
mkdir -p /var/www/
mkdir -p /var/www/html

cd /var/www/html
if [ ! -f /var/www/html/wp-config.php ]; then

    rm -rf *

    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

    #wp cliをインストールする

    chmod +x wp-cli.phar 

    mv wp-cli.phar /usr/local/bin/wp


    wp core download --allow-root

    #wordpressをダウンロードする

    mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

    sed -i -r "s|database_name_here|$db_name|1" wp-config.php
    sed -i -r "s|username_here|$db_user|1" wp-config.php
    sed -i -r "s|password_here|$db_pwd|1" wp-config.php
    sed -i -r "s|localhost|mariadb|1" wp-config.php
    perl -0pi -e 's{put your unique phrase here}{$ENV{AUTH_KEY}}' wp-config.php
    perl -0pi -e 's{put your unique phrase here}{$ENV{SECURE_AUTH_KEY}}' wp-config.php
    perl -0pi -e 's{put your unique phrase here}{$ENV{LOGGED_IN_KEY}}' wp-config.php
    perl -0pi -e 's{put your unique phrase here}{$ENV{NONCE_KEY}}' wp-config.php
    perl -0pi -e 's{put your unique phrase here}{$ENV{AUTH_SALT}}' wp-config.php
    perl -0pi -e 's{put your unique phrase here}{$ENV{SECURE_AUTH_SALT}}' wp-config.php
    perl -0pi -e 's{put your unique phrase here}{$ENV{LOGGED_IN_SALT}}' wp-config.php
    perl -0pi -e 's{put your unique phrase here}{$ENV{NONCE_SALT}}' wp-config.php


    wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root

    #wordpressをインストールする

    wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root


    wp theme install astra --activate --allow-root

    wp plugin update --all --allow-root

fi

sed -i 's/listen = \/run\/php\/php8.2-fpm.sock/listen = 9000/g' /etc/php/8.2/fpm/pool.d/www.conf
#php-fpmの設定を行う

mkdir -p /run/php

/usr/sbin/php-fpm8.2 -F