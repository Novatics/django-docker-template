# DOCKER DEPLOY ------------------------------------------------
file := "docker-compose.yml"

up:
	# Create and start containers
	#sudo docker-compose up
	sudo docker-compose up -d db
	sleep 10
	sudo docker-compose up -d web
	sudo docker-compose logs -f

build:
	# Rebuild the docker compose
	sudo docker-compose build

restart:
	# Restart services
	sudo docker-compose restart

logs:
	# View output from containers
	sudo docker-compose logs

start:
	# Start services
	sudo docker-compose start

stop:
	# Stop services
	sudo docker-compose stop

ps:
	# List all running containers
	sudo docker-compose ps

down:
	# Stop and Remove all containers
	sudo docker-compose down

migrations:
	# Create migrations
	sudo docker-compose run web python manage.py makemigrations

migrate:
	# Migrate migrations
	sudo docker-compose run webr python manage.py migrate

fixture:
	# Generate fixtures saved upon core models
	# sudo docker-compose run web python manage.py dumpdata core --format json > WebManager/core/fixtures/data.json

loaddata:
	# load fixtures saved upon core models
	# sudo docker-compose run web python manage.py loaddata data.json

test:
	# run unit tests
	sudo docker-compose run web-manager python manage.py test
