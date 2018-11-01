.PHONY: db

DOCKER-COMPOSE := $(shell which docker-compose)

# TODO 接続情報は環境変数などから取得できるようにする
DB := $(shell which mysql)
DB_NAME = swagger_sample
DB_USER = root
DB_PASSWORD =
DB_HOST = 0.0.0.0
DB_PORT = 3316

help:
	cat Makefile

up:
	$(DOCKER-COMPOSE) up -d

down:
	$(DOCKER-COMPOSE) down

db:
	$(DB) -u$(DB_USER) -p$(DB_PASSWORD) -h$(DB_HOST) -P$(DB_PORT) -D$(DB_NAME)
