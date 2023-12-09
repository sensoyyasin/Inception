DATA_PATH = /home/ysensoy/data

up: makeFolder
	cd srcs	&& docker-compose up

build: makeFolder
	cd srcs	&& docker-compose build

start:
	cd srcs && docker-compose start

stop:
	cd srcs && docker-compose stop

down:
	cd srcs && docker-compose down

ps:
	cd srcs && docker-compose ps

makeFolder:
	@mkdir -p ${DATA_PATH}
	@mkdir -p ${DATA_PATH}/wordpress
	@mkdir -p ${DATA_PATH}/mariadb

clean: down
	sudo rm -rf ${DATA_PATH}
	docker system prune -af

re: clean up

.PHONY: run clean stop reload
