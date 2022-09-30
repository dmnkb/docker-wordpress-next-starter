FILE?=docker-compose.dev.yml

dev:
	docker compose -f ${FILE} up -d

build:
	docker compose -f ${FILE} up --build -d

down:
	docker compose -f ${FILE} down

remove-db:
	rm -rf ./db/*