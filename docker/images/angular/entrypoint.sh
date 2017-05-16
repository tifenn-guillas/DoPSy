#!/bin/bash
set -e

install() {
    cd my-project
    rm node_modules/ -Rf
    yarn
}

init() {
    ng new my-project
}

run() {
    cd my-project
    ng serve --host 0.0.0.0
}

case "$1" in
"install")
    echo "Install"
    install
    ;;
"run")
    echo "Run"
    run
    ;;
"init")
    echo "Initialization"
    init
    ;;
*)
    echo "Custom command : $@"
    exec "$@"
    ;;
esac
