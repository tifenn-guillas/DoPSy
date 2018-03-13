NAME_APP=app

build:
	docker build --file="docker/images/app/Dockerfile" --tag="$(NAME_APP):latest" docker/images/app/.

install:
	chmod -Rf 777 docker/ || true
	chmod 644 docker/etc/mysql/my.cnf
	docker-compose run app install

debug:
	docker exec -it $(NAME_APP) gosu docker bash
run:
	docker-compose up