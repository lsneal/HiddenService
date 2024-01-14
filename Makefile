DOCKER_COMPOSE = src/docker-compose.yml

all: stop build run

build:
	docker-compose -f $(DOCKER_COMPOSE) build
run:
	docker-compose -f $(DOCKER_COMPOSE) up
stop:
	docker-compose -f $(DOCKER_COMPOSE) down
clean: stop
	docker system prune -af

.PHONY: build run stop clean
