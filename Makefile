.PHONY: build db-create up down bash

build:
	docker compose build

db-create:
	docker compose run --rm web rake db:create

up:
	docker compose up -d

down:
	docker compose down

bash:
	docker-compose exec web bash