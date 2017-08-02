#!/bin/bash
set -e
source ~/.bash_profile
export dir=`pwd`
export action="$1"

install() {
    cd $dir/server
    composer self-update
    gosu docker composer install

    cd $dir/client/my-project
    rm node_modules/ -Rf
    gosu docker yarn
}

tests() {
    cd $dir
    gosu docker php bin/phpunit -c app/
}

run() {
    ln -sf /etc/nginx/sites-available/sf-backend.conf /etc/nginx/sites-enabled/sf-backend.conf
    ln -sf /etc/nginx/sites-available/ng-frontend.conf /etc/nginx/sites-enabled/ng-frontend.conf
    ln -sf /etc/supervisor/conf-available/app.conf /etc/supervisor/conf.d/app.conf

    if [ $APP_ENV = "dev" ]; then
        rm -f /etc/nginx/sites-enabled/ng-frontend.conf
        ln -sf /etc/supervisor/conf-available/dev.conf /etc/supervisor/conf.d/dev.conf
    fi

    supervisord
}

build() {
    cd $dir/client/my-project
    ng build --prod
}

case $action in
"install")
    echo "Install"
    install
    ;;
"tests")
    echo "Tests"
    tests
    ;;
"run")
    if [ $APP_ENV = "prod" ]; then
        build
    fi
    echo "Run"
    run
    ;;
*)
    echo "Custom command : $@"
    exec "$@"
    ;;
esac
