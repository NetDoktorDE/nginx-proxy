#!/usr/bin/env bash

export COMPOSE_FILE=docker-compose-separate-containers.yml 

# Also starts nginx automatically
docker-compose run -d --service-ports --name nginxproxy nginx
docker-compose run -d --service-ports --name nginxproxy-dockergen dockergen
docker-compose run -d --service-ports --name nginxproxy-letsencryptit letsencryptit
