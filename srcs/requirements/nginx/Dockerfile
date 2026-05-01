FROM debian:bullseye

RUN apt-get -y update && apt-get install -y nginx && apt-get install openssl -yarn

COPY ./tools/entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]