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

migrate-reset:
	docker compose run --rm web rake db:migrate:reset

setup:
	make build db-create migrate

bash:
	docker-compose exec web bash

rubocop:
	docker-compose run --rm web rubocop

rubocop-fix:
	docker-compose run --rm web rubocop -a