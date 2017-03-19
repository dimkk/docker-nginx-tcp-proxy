#!/bin/bash

echo 'checking env OVPN ' $OVPN
if [ -a $OVPN ]
  then
    echo "got ovpn, trying to connect"
    exec openvpn --config $OVPN --dev tun
    sleep 10
fi

echo 'starting nginx...'
exec /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf