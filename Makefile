## .env setup
env:
	@cp src/.env.example src/.env
	@echo .env copied, please edit src/.env file

## First installation
init:
	@echo "Command: KEY GENERATION : \n"
	@docker-compose exec php php -r "echo 'base64:' . base64_encode(random_bytes(32)) . PHP_EOL;"
	@echo "\nCommand: composer install\n"
	@docker-compose exec php composer install
	@echo "\nCommand: php artisan migrate\n"
	@docker-compose exec php php artisan migrate
	@echo "\nCommand: php artisan db:seed\n"
	@docker-compose exec php php artisan db:seed

## Run database migration	
migrate:
	@echo "Command: php artisan migrate\n"
	@docker-compose exec php php artisan migrate

## Run database seeding
seed:
	@echo "Command: php artisan db:seed\n"
	@docker-compose exec php php artisan db:seed

## Run all docker services
start:
	@docker-compose up -d --build
	@echo Server started !

## Build the dockerfile project
build:
	@docker-compose build

## Stop all docker services
stop:
	@docker-compose stop

## Restart all docker services
restart:
	@docker-compose stop
	@docker-compose up -d

## Show logs for all services
logs:
	@docker-compose logs --tail=5

## Clear all services
clear:
	@docker-compose down