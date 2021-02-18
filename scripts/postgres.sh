#!/usr/bin/env bash
set -e

if [ $1 == "start" ]
then
	docker run \
		--rm   \
		--name  postgres \
		-p 5432:5432 \
		-e POSTGRES_USER=postgres \
		-e POSTGRES_PASSWORD=postgres \
		-e POSTGRES_DB=postgres \
		-d postgres
fi

if [ $1 == "stop" ]
then
	docker stop postgres
fi


if [ $1 == "shell" ]
then
	docker exec -it postgres psql -U postgres
fi
