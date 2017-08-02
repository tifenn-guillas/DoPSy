#/bin/sh

docker build --file="docker/images/app/Dockerfile" --tag="app:latest" docker/images/app/.
#docker build --file="docker/images/mysql/Dockerfile" --tag="dopsyng_mysql:latest" docker/images/mysql/.