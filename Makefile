NAME_APP=app

build:
	docker build --file="docker/images/app/Dockerfile" --tag="$(NAME_APP):latest" docker/images/app/.

install:
	chmod -Rf 777 docker/
	chmod 644 docker/etc/mysql/my.cnf
	docker-compose run app install

debug:
	docker run -it --rm --entrypoint=/bin/bash $(NAME_APP):master

run:
	docker-compose up