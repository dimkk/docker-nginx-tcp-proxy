NGINX with TCP proxy support
============================

- [Nginx](http://nginx.org/)
- [OpenVPN](http://openvpn.org/)

[![](http://dockeri.co/image/dimkk/docker-nginx-tcp-proxy)](https://registry.hub.docker.com/u/dimkk/docker-nginx-tcp-proxy/)

Quick Start
-----------
### for non ovpn balancer, just use this:
    $ docker run --name nginx-tcp-proxy -d -p 2106:2106 -p 8123:8123 \
        -v C:/Users/dimkk/Documents/projects/docker-nginx-tcp-proxy/nginx.conf:/usr/local/nginx/conf/nginx.conf \
        dimkk/docker-nginx-tcp-proxy

### for ovpn 
1. Get the .ovpn file from Open VPN server
2. Use command
    $ docker run --name nginx-tcp-proxy -d -p 2106:2106 -p 8123:8123 \
        -v C:/docker-nginx-tcp-proxy/nginx.conf:/usr/local/nginx/conf/nginx.conf \
        -v C:/docker-nginx-tcp-proxy/client.ovpn:/root/client.ovpn \
        -e OVPN=/root/client.ovpn
        dimkk/docker-nginx-tcp-proxy

Manual
------

[https://www.nginx.com/resources/admin-guide/tcp-load-balancing/](https://www.nginx.com/resources/admin-guide/tcp-load-balancing/)

License
-------
[MIT](http://yulun.mit-license.org/)

thanks, zack