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
NTPDATECMD=/usr/sbin/ntpdate-debian
RETVAL=0
IOBROKERUSER=@@user

start() {
            echo -n "Starting ccu.io"
            for seq in 1 2 3 4 5
                if [ "$NTPDATECMD" != "" ] ; then
                    sudo $NTPDATECMD
                fi
                if [ $(date +%Y) -le 2000 ] ; then
                    sleep 5
                    echo -n "."
                else
                    break
                fi
            done
            sudo -u ${IOBROKERUSER} $NODECMD $IOBROKERCMD start
            RETVAL=$?
            echo "."
}

stop() {
            echo -n "Stopping ccu.io"
            sudo -u ${IOBROKERUSER} $NODECMD $IOBROKERCMD stop
            RETVAL=$?
            echo "."
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
