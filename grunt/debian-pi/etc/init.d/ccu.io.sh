#!/bin/bash
### BEGIN INIT INFO
# Provides:          ccu.io.sh
# Required-Start:    $network $local_fs $remote_fs
# Required-Stop::    $network $local_fs $remote_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: starts ccu.io
# Description:       starts ccu.io
### END INIT INFO
(( EUID )) && echo .You need to have root privileges.. && exit 1
PIDF=/opt/ccu.io/ccu.io.pid
NODECMD=/usr/local/bin/node
IOBROKERCMD=/opt/ccu.io/ccu.io-server.js
RETVAL=0
IOBROKERUSER=@@user

start() {
            echo -n "Starting ccu.io"
            sudo -u ${IOBROKERUSER} $NODECMD $IOBROKERCMD start
            RETVAL=$?
}

stop() {
            echo -n "Stopping ccu.io"
            sudo -u ${IOBROKERUSER} $NODECMD $IOBROKERCMD stop
            RETVAL=$?
}
case "$1" in
    start)
      start
  ;;
    stop)
      stop
  ;;
    restart)
      stop
      start
  ;;
    *)
      echo "Usage: ccu.io {start|stop|restart}"
      exit 1
  ;;
esac
exit $RETVAL
