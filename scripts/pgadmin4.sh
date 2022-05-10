#!/usr/bin/env bash
set -e

if [ $1 == "start" ]
then
	docker run \
		--rm  \
		--name pgadmin4 \
		-e PGADMIN_DEFAULT_EMAIL=admin \
		-e PGADMIN_DEFAULT_PASSWORD=admin \
		-p 8080:80 \
		-d \
		dpage/pgadmin4
fi

if [ $1 == "stop" ]
then
    docker stop pgadmin4
fi
