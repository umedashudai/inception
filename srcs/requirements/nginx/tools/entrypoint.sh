#!/bin/bash




openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out $CERTS_ -subj "/C=MO/L=KH/O=1337/OU=student/CN=sahafid.42.ma"

#nginx自体にoepnsslのライブラリを所持しているため
#https通信するために証明書と秘密鍵を発行だけでよい（自己署名)

echo "
server {
    listen 443 ssl;
    listen [::]:443 ssl; 

    #server_name www.$DOMAIN_NAME $DOMAIN_NAME;

    ssl_certificate $CERTS_;
    ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;
" > /etc/nginx/sites-available/default

#sl_certificate $CERTS_; httpsの公開鍵
#ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;　httpsの秘密鍵

echo '
    ssl_protocols TLSv1.3;

    index index.php;
    root /var/www/html;

    location ~ [^/]\.php(/|$) { 
            try_files $uri =404;
            fastcgi_pass wordpress:9000;
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        }
} ' >>  /etc/nginx/sites-available/default

#try_files =$uri=404 ファイルがあればOK ないなら404を返す
#include fastcgi_params PHPに渡す基本情報セットを読み込む 環境変数など
#fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name 実際に実行するPHPファイルのフルパスを指定
nginx -g "daemon off;"