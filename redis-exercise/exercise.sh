#!/bin/bash
docker run --name red -d -v $PWD:/app redis:5.0.9
wget "https://github.com/ziad-saab/scenarios/raw/master/redis-exercise/init.redis"
docker exec -it red bash -c 'redis-cli < /app/init.redis && redis-cli'
