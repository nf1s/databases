#!/usr/bin/env bash
set -e

if [ $1 == "run" ]
then
    export ES_HOSTS="http://localhost:9200"
    docker run -d \
    --rm \
    --name elasticsearch \
    -p 9200:9200 -p 9300:9300 \
    -e "discovery.type=single-node" \
    docker.elastic.co/elasticsearch/elasticsearch:7.5.2
fi

if [ $1 == "stop" ]
then
    docker stop elasticsearch
fi
