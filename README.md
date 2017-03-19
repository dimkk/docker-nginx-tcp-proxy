NGINX with TCP proxy support
============================

- [Nginx](http://nginx.org/)

[![](http://dockeri.co/image/dimkk/docker-nginx-tcp-proxy)](https://registry.hub.docker.com/u/dimkk/docker-nginx-tcp-proxy/)

Quick Start
-----------

    $ docker run --name nginx-tcp-proxy -d -p 2106:2106 -p 8123:8123 \
        -v C:/Users/dimkk/Documents/projects/docker-nginx-tcp-proxy/nginx.conf:/usr/local/nginx/conf/nginx.conf \
        dimkk/docker-nginx-tcp-proxy


Manual
------

[https://www.nginx.com/resources/admin-guide/tcp-load-balancing/](https://www.nginx.com/resources/admin-guide/tcp-load-balancing/)

License
-------
[MIT](http://yulun.mit-license.org/)

thanks, zack