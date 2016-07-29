#!/bin/bash

# THIS IS HARDCODED. CHANGE THIS IS NEEDED.
SVRVAR = '/koazieapp/koazie/server.js'

if [ $# -eq 0 ]; then
  echo "    usage:"
  echo "           ./ctl.sh help"
  echo "           ./ctl.sh (start|stop|restart|status) server"
  echo "           ./ctl.sh (start|stop|restart|status) mongod"
  echo ""
  echo "    help       - this screen."
  echo "    start      - start the service."
  echo "    stop       - stop the service."
  echo "    restart    - restart or start the service."
  echo "    status     - show the status of the service."
  exit 1
fi

if [ $# -eq 1 ]; then
  echo "    usage:"
  echo "           ./ctl.sh (start|stop|restart|status) server"
  echo "           ./ctl.sh (start|stop|restart|status) mongod"
  echo ""
  echo "    start      - start the service."
  echo "    stop       - stop the service."
  echo "    restart    - restart or start the service."
  echo "    status     - show the status of the service."
fi

cmd=$1
case "$cmd" in
  start )
    subcmd=$2
    case "$subcmd" in
      mongod )
        echo "starting mongod..."
        sudo service mongod start
        ;;
      server )
        echo "starting server..."
        sudo forever start $SVRPATH
        ;;
    esac
    ;;
  stop )
    subcmd=$2
    case "$subcmd" in
      mongod )
        echo "stopping mongod..."
        sudo service mongod stop
        ;;
      server )
        echo "stopping server..."
        sudo forever stop $SVRPATH
        ;;
    esac
    ;;
  restart )
    subcmd=$2
    case "$subcmd" in
      mongod )
        echo "restarting mongod..."
        sudo service mongod restart
        ;;
      server )
        echo "restarting server..."
        sudo forever restart $SVRPATH
        ;;
    esac
    ;;
  status )
    subcmd=$2
    case "$subcmd" in
      mongod )
        echo "status of mongod is..."
        sudo service mongod status
        ;;
      server )
        echo "status of server is..."
        sudo forever list
        ;;
    esac
    ;;
  help )
    echo "    usage:"
    echo "         ./ctl.sh help"
    echo "         ./ctl.sh (start|stop|restart|status) server"
    echo "         ./ctl.sh (start|stop|restart|status) mongod"
    echo ""
    echo "    help       - this screen."
    echo "    start      - start the service."
    echo "    stop       - stop the service."
    echo "    restart    - restart or start the service."
    echo "    status     - show the status of the service."
    ;;
esac