#!/usr/bin/env bash
set -e

start() {
	docker run \
		--rm   \
		--name  postgres \
		-p 5555:5432 \
		-e POSTGRES_USER=postgres \
		-e POSTGRES_PASSWORD=postgres \
		-e POSTGRES_DB=postgres \
		-d postgres:11.16
}

stop() {
	docker stop postgres
}

if [ $1 == "start" ]
then
	start
fi

if [ $1 == "stop" ]
then
	stop
fi

if [ $1 == "restart" ]
then
	stop
	start
fi


if [ $1 == "shell" ]
then
	docker exec -it postgres psql -U postgres
fi
