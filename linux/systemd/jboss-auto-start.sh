#!/bin/sh

### BEGIN INIT INFO

# Provides: jboss

# Required-Start: $local_fs $remote_fs $network $syslog

# Required-Stop: $local_fs $remote_fs $network $syslog

# Default-Start: 2 3 4 5

# Default-Stop: 0 1 6

# Short-Description: Management of JBoss AS v7.x

### END INIT INFO

case "$1" in

start)

echo "Starting JBoss"

sudo -i -u javau sh /apps/xxx/scripts/TPS/startJBoss --instanceName=xxxx

;;

stop)

echo "Stopping JBoss"

sudo -i -u javau sh /apps/xxx/scripts/TPS/stopJBoss --instanceName=xxxxx

;;

log)

echo "Showing server.log..."

tail -1000f /apps/xxx/logs/jboss-eap/700/TPS/xxxxx/server.log

;;

*)

echo "Usage: /etc/init.d/jboss {start|stop|log}"

exit 1

;; esac

exit 0
