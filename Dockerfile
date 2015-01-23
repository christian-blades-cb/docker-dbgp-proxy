FROM ubuntu

MAINTAINER Christian Blades <christian.blades@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install python-pip
RUN apt-get -qy autoremove && DEBIAN_FRONTEND=noninteractive apt-get -qy clean
RUN pip2 install komodo-python-dbgp

CMD /usr/local/bin/pydbgpproxy

EXPOSE 9000 9001
