docker run --name mng -d -v $PWD:/app mongo:4.2.6-bionic
gunzip events.json.gz
docker exec -i mng mongoimport --jsonArray /app/events.json
docker exec -it mng mongo