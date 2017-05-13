# zhiwww/sslocal-http
#
# VERSION 0.0.1

FROM ubuntu:16.04
MAINTAINER Zhi Wei <zhiwww@gmail.com>
WORKDIR /svc/

ENV PROXY_PORT 8123

RUN apt-get update && apt-get install -y polipo git python-pip libsodium18
RUN pip install -e git+https://github.com/shadowsocks/shadowsocks.git@master#egg=shadowsocks

COPY start.sh .
RUN chmod +x ./start.sh

ENTRYPOINT ["/svc/start.sh"]