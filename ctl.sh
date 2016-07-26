#!/bin/bash

if [ $# -eq 0 ]; then
    echo "usage:"
    echo "     ./ctl.sh help"
    echo "     ./ctl.sh (start|stop|restart) (location of server file)"
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
        echo "START"
        subcmd=$2
        case "$subcmd" in
            test )
                echo "TEST"
                ;;
        esac
        ;;
    stop )
        echo "STOP"
        subcmd=$2
        case "$subcmd" in
            test )
                echo "TEST"
                ;;
        esac
        ;;
    \? )
        ;;
    help )
        echo "usage:"
        echo "     ./ctl.sh help"
        echo "     ./ctl.sh (start|stop|restart) (location of server file)"
        echo "     ./ctl.sh (start|stop|restart|status) mongod"
        echo ""
        echo "help       - this screen."
        echo "start      - start the service."
        echo "stop       - stop the service."
        echo "restart    - restart or start the service."
        echo "status     - show the status of the service."
        ;;
esac
