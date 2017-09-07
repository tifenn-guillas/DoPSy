NAME_APP=app
NAME_MYSQL=app_mysql

build:
	docker build --file="docker/images/app/Dockerfile" --tag="$(NAME_APP):latest" docker/images/app/.
	docker build --file="docker/images/mysql/Dockerfile" --tag="$(NAME_MYSQL):latest" docker/images/mysql/.

install:
	chmod -Rf 777 docker/
	chmod 644 docker/etc/mysql/my.cnf
	docker-compose run app install

debug:
	docker run -it --rm --entrypoint=/bin/bash $(NAME_APP):master

run:
	docker-compose up