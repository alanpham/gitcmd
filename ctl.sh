#!/bin/bash

# THIS IS HARDCODED. CHANGE THIS IF NEEDED.
SVRVAR = '/koazieapp/koazie/server.js'

if [ $# -eq 2 ]; then
  cmd=$1
  subcmd=$2
  case "$cmd" in
    start )
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
  exit 0
else
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