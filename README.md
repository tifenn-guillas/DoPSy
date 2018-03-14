# DoPSyNg : (Docker, Php7, Symfony3 & Angular5)

## Requierements
- Docker 1.9
- Docker Compose 1.4

## Directory 
- docker    // Images docker & conf (PHP7, NGINX, Supervisor, MySQL & logs)
- server    // Symfony3 - Project source code
- client    // Angular5 - Project source code

## Installation 

Create images for Docker
```console
make
```

Define permissions and dependencies
```console
make install
```

## Launch the application

**Development**

By default, the application is launch in development environment.

**Production**

To launch the application in production environment, modify the variable APP_ENV in 'docker-compose.yml':
```console
services:
  app:
    environment:
      APP_ENV: prod
```

**Launching**

Run the cluster
```console
make run
```

In another terminal
```console
docker exec -ti app bash
```

## Author

**Tifenn Guillas**
- <http://tifenn-guillas.fr>
- <https://github.com/tifenn-guillas>

## Contributors

**Anthony K GROSS**
- <http://anthonykgross.fr>
- <https://twitter.com/anthonykgross>
- <https://github.com/anthonykgross>
- <http://www.twitch.tv/anthonykgross>

## Technologies
- PHP7 - Symfony 3.4 - Composer - PhpUnit
- Angular5 - Bootstrap3
- MySql
- Docker
