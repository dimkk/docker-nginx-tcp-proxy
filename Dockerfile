FROM ubuntu

MAINTAINER dimkk <dimkk@outlook.com>

ENV NGINX_VERSION 1.11.10

RUN apt-get update && \
	apt-get -y install build-essential \
	libssl-dev nano openvpn \
	curl \
	libpcre3 \
	libpcre3-dev && \
	rm -rf /var/lib/apt/lists/* # 20150205

RUN curl -O http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz && \
	tar zxvf nginx-$NGINX_VERSION.tar.gz && \
	cd nginx-$NGINX_VERSION && \
	./configure --with-stream  --with-http_stub_status_module && \
	make && make install

CMD /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf