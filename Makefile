init:
	@make build
	@make up
	@make composer-install
	docker compose exec app cp .env.example .env
	docker compose exec app php artisan key:generate
	@make npm-install
	docker compose exec laravel.test npm run dev

up:
	docker compose up -d

up-with-logs:
	docker compose up

db-migrate-seed:
	docker compose exec laravel.test php artisan migrate:fresh --seed

ps:
	docker compose ps

down:
	docker compose down

down-v:
	docker compose down -v

restart:
	@make down
	@make up

login-app:
	docker compose exec laravel.test bash

login-db:
	docker compose exec mysql bash

build:
	docker compose build

composer-install:
	docker compose exec laravel.test composer install

npm-install:
	docker compose exec laravel.test npm install

larastan:
	docker compose exec laravel.test php -d memory_limit=1G ./vendor/bin/phpstan analyse -c phpstan.neon

pint:
	docker compose exec laravel.test ./vendor/bin/pint -v
