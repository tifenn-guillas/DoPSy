#/bin/sh

docker build --file="docker/images/php7/Dockerfile" --tag="dopsyng_php7:latest" docker/images/php7/.
docker build --file="docker/images/mysql/Dockerfile" --tag="dopsyng_mysql:latest" docker/images/mysql/.
docker build --file="docker/images/angular/Dockerfile" --tag="dopsyng_angular:latest" docker/images/angular/.