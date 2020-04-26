#!/bin/bash
docker run --name mng -d -v $PWD:/app mongo:4.2.6-bionic
wget "https://github.com/ziad-saab/scenarios/raw/master/querying-mongo/events.json.gz"
gunzip events.json.gz
docker exec -it mng bash -c 'mongoimport --jsonArray /app/events.json && mongo --quiet'
