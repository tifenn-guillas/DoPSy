# DoPSyNg : (DOcker, Php7, SYmfony3 & Angular4)

## Requierements: 
- Docker 1.9
- Docker Compose 1.4

## Directory 
- docker    // Images docker & conf (Php7, nginx, supervisor & logs)
- docs      // Documentations
- server    // Symfony3 - Project source code
- client    // Angular4 - Project source code

## How to install 

Create images for Docker
```console
make
```

Define permissions and dependencies
```console
make install
```

Run the cluster
```console
make run
```

In another terminal
```console
docker exec -ti app bash
```

## Development 

- Don't miss to add 127.0.0.1 dopsy.local in /etc/hosts (Unix)
- Don't miss to add <VM ip> dopsy.local in /etc/hosts (OSX) or in Windows/System32/drivers/etc/hosts (Win)

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
- PHP7 - Symfony 3 - Composer - PhpUnit
- Angular4 - Bootstrap
- MySql
- Docker
