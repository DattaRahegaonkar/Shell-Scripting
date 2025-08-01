
# Creating a Makefile to Run Conatainer using Makefile


DOCKER_COMPOSE := docker-compose

OS := $(shell uname)

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down
