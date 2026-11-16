#!/bin/bash
PIDFILE="/tmp/hypr-scroll-$1-$2.pid"
[ -f "$PIDFILE" ] && exit 0
echo $$ > "$PIDFILE"
trap 'rm -f "$PIDFILE"; exit' TERM INT
while true; do
  wlrctl pointer scroll "$1" "$2"
  sleep 0.05
done
