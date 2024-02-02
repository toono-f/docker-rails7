.PHONY: build db-create up down bash

build:
	docker compose build

db-create:
	docker compose run --rm web rake db:create

up:
	docker compose up -d

down:
	docker compose down

seed:
	docker compose run --rm web rake db:seed

migrate:
	docker compose run --rm web rake db:migrate

setup:
	make build db-create migrate seed

bash:
	docker-compose exec web bash