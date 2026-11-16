#!/bin/bash
PIDFILE="/tmp/hypr-scroll-$1-$2.pid"
if [ -f "$PIDFILE" ]; then
  kill "$(cat "$PIDFILE")" 2>/dev/null
  rm -f "$PIDFILE"
fi
