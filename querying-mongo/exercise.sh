#!/bin/bash
docker run --name mng -d -v $PWD:/app mongo:4.2.6-bionic
wget "https://github.com/ziad-saab/scenarios/raw/master/querying-mongo/events.json.gz"
gunzip events.json.gz
docker exec -i mng mongoimport --jsonArray /app/events.json
pwd
hostname
echo 'docker exec -it mng mongo' > /root/mongo.sh
chmod +x /root/mongo.sh
ls -l /root