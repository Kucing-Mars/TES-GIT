docker network create --driver bridge mongonetwork
docker image pull mongo-express
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=adit --env MONGO_INITDB_ROOT_PASSWORD=adit mongo:latest
docker container create --name mongodbexpress --network mongonetwork --env ME_CONFIG_MONGODB_URL="mongodb://adit:adit@mongodb:27017/" --publish 8081:8081 mongo-express:latest
docker container start mongodb
docker container start mongodbexpress