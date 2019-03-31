FROM debian:stretch
LABEL maintainer="ERPcoin Developers <dev@erpcoin.org>"
LABEL description="Dockerised ERPcoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
