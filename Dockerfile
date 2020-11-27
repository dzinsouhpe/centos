FROM centos:7.8.2003
LABEL maintainer="dietrich.zinsou@hpe.com"

RUN yum install -y curl tar python python-setuptools python-argparse

COPY appconfig.tgz /opt/configscripts/appconfig.tgz

CMD ["/sbin/init"]
