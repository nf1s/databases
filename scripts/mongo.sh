#!/usr/bin/env bash
set -e

start() {
	docker run \
		--rm   \
		--name mongodb \
		-p 27017:27017 \
		-d mongo
}

stop() {
	docker stop mongodb
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
  docker exec -it mongodb bash
fi

