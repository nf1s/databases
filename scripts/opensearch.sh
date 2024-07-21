#!/usr/bin/env bash
set -e

if [ $1 == "start" ]
then
    docker run \
      --rm \
      --name opensearch \
      -p 19200:9200 -p 19300:9300 \
      -e "discovery.type=single-node" \
      -e "DISABLE_SECURITY_PLUGIN=true" \
      -d opensearchproject/opensearch:2.0.0
fi

if [ $1 == "stop" ]
then
    docker stop opensearch
fi
