DATA_PATH := /home/ysensoy/desktop
SRC_DIR := srcs
DOCKER_COMPOSE := docker-compose

makeFolder : makeDir

makeDir:
	mkdir -p $(DATA_PATH)
	mkdir -p $(DATA_PATH)/wordpress
	mkdir -p $(DATA_PATH)/mariadb

up:
	$(DOCKER_COMPOSE) -f $(SRC_DIR)/docker-compose.yml up -data

build:
	$(DOCKER_COMPOSE) -f $(SRC_DIR)/docker-compose.yml build

start:
	$(DOCKER_COMPOSE) -f $(SRC_DIR)/docker-compose.yml start

stop:
	$(DOCKER_COMPOSE) -f $(SRC_DIR)/docker-compose.yml stop

down:
	$(DOCKER_COMPOSE) -f $(SRC_DIR)/docker-compose.yml down

# Second line Removing the volumes
# docker prune cleaning the avoid things.
# docker prune a -> remove all unused objects
# docker prune -F -> removal of objects without asking for confirmation
clean: down
	sudo rm -rf $(DATA_PATH)
	$(DOCKER_COMPOSE) -f $(SRC_DIR)/docker-compose.yml down
	docker system prune -aF

re: clean up

run: up

reload: stop up
