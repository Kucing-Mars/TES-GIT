docker image pull mysql:latest
docker container create --name mysql-container --env MYSQL_ROOT_PASSWORD=adit --publish 3306:3306 mysql:latest
docker container start mysql-container