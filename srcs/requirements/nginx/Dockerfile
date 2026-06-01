FROM debian:bookworm

RUN apt-get -y update && apt-get install -y nginx && apt-get install openssl -y

COPY ./tools/entrypoint.sh /

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]