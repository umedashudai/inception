all: up

up:
	@mkdir -p /home/sumedai/data/mariadb
	@mkdir -p /home/sumedai/data/wordpress
	@docker compose -f ./srcs/docker-compose.yml up --build

down:
	@docker compose -f ./srcs/docker-compose.yml down

stop:
	@docker compose -f ./srcs/docker-compose.yml stop

start:
	@docker compose -f ./srcs/docker-compose.yml start

status:
	@docker compose -f ./srcs/docker-compose.yml ps


.PHONY: all up down stop status
