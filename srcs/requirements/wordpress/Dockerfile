FROM debian:bullseye

RUN apt-get update -y 

RUN apt-get install php-fpm php-mysql -y

RUN apt-get install curl -y

RUN apt-get install mariadb-client -y


COPY ./tools/script.sh /

RUN chmod +x /script.sh

CMD [ "/script.sh" ]