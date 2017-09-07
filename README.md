# DoPSyNg : (Docker, Php7, Symfony3 & Angular4)

## Requierements
- Docker 1.9
- Docker Compose 1.4

## Directory 
- docker    // Images docker & conf (PHP7, NGINX, Supervisor, MySQL & logs)
- server    // Symfony3 - Project source code
- client    // Angular4 - Project source code

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

## Development 

- Don't miss to add 127.0.0.1 dopsyng.local in /etc/hosts (Unix)
- Don't miss to add <VM ip> dopsyng.local in /etc/hosts (OSX) or in Windows/System32/drivers/etc/hosts (Win)

## Contributors

**Anthony K GROSS**
- <http://anthonykgross.fr>
- <https://twitter.com/anthonykgross>
- <https://github.com/anthonykgross>
- <http://www.twitch.tv/anthonykgross>

**Tifenn Guillas**
- <http://tifenn-guillas.fr>
- <https://github.com/tifenn-guillas>

## Technologies
- PHP7 - Symfony3 - Composer - PhpUnit
- Angular4 - Bootstrap
- MySql
- Docker
