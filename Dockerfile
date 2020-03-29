FROM telegraf:1.14

LABEL MAINTAINER="Sergio Navarro Fajardo <sergio@navarrofajardo.com>"

RUN mkdir -p /etc/apt
COPY sources.list /etc/apt/
RUN apt-get update && \
    apt-get install -y --no-install-recommends snmp-mibs-downloader && \
    rm -rf /var/lib/apt/lists/* 
##COPY wget -c 'https://box.mikrotik.com/f/0d2bf2e84c434e7a9754/?dl=1' -O /var/lib/snmp/mibs/ietf/Mikrotik.mib
ADD 'https://box.mikrotik.com/f/0d2bf2e84c434e7a9754/?dl=1' /var/lib/snmp/mibs/ietf/Mikrotik.mib


