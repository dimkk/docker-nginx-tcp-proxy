#!/bin/bash
if [-a $OVPN]; then
  exec ovpn --config $OVPN
  sleep 10
fi
exec /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf