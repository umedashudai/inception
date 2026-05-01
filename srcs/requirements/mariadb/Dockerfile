FROM debian:bullseye

RUN apt-get update -y && apt-get install -y mariadb-server

COPY ./tools/server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/entrypoint.sh /

ENTRYPOINT ["./tools/entrypoint.sh"]
