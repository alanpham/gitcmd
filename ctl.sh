#!/bin/bash

if [ $# -eq 0 ]; then
    echo "usage:"
    echo "     ./ctl.sh help"
    echo "     ./ctl.sh (start|stop|restart|status) server"
    echo "     ./ctl.sh (start|stop|restart|status) mongod"
    echo ""
    echo "help       - this screen."
    echo "start      - start the service."
    echo "stop       - stop the service."
    echo "restart    - restart or start the service."
    echo "status     - show the status of the service."
    exit 1
fi

cmd=$1
case "$cmd" in
    start )
        subcmd=$2
        case "$subcmd" in
            mongod )
                echo "starting mongod..."
                ;;
            server )
                echo "starting server..."
                ;;
        esac
        ;;
    stop )
        subcmd=$2
        case "$subcmd" in
            mongod )
                echo "stopping mongod..."
                ;;
            server )
                echo "stopping server..."
                ;;
        esac
        ;;
    restart )
        subcmd=$2
        case "$subcmd" in
            mongod )
                echo "restarting mongod..."
                ;;
            server )
                echo "restarting server..."
                ;;
        esac
        ;;
    status )
        subcmd=$2
        case "$subcmd" in
            mongod )
                echo "status of mongod is..."
                ;;
            server )
                echo "status of server is..."
                ;;
        esac
        ;;
    help )
        echo "usage:"
        echo "     ./ctl.sh help"
        echo "     ./ctl.sh (start|stop|restart|status) server"
        echo "     ./ctl.sh (start|stop|restart|status) mongod"
        echo ""
        echo "help       - this screen."
        echo "start      - start the service."
        echo "stop       - stop the service."
        echo "restart    - restart or start the service."
        echo "status     - show the status of the service."
        ;;
    \? )
        echo "ERROR!"
        ;;
esac
