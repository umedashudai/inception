FROM debian:bullseye

RUN apt-get -y update && apt-get install -y nginx && apt-get install openssl -yarn

COPY ./tools/entrypoint.sh /

CMD ["/entrypoint.sh"]