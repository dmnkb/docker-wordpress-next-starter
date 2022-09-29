FILE?=docker-compose.dev.yml

dev:
	docker compose -f ${FILE} up -d

build:
	docker image prune -a -f && \
	docker compose -f ${FILE} up --force-recreate --build -d
down:
	docker compose -f ${FILE} down
