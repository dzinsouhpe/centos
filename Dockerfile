FROM centos:7.8.2003
LABEL maintainer="dietrich.zinsou@hpe.com"

RUN yum install -y curl tar python python-setuptools python-argparse

COPY ./kubedirector/ /tmp/
RUN cd /tmp/ && tar czf appconfig.tgz appconfig/ && mkdir /opt/configscripts && cp appconfig.tgz /opt/configscripts/appconfig.tgz && rm -rf appconfig*
#COPY appconfig.tgz /opt/configscripts/appconfig.tgz

CMD ["/sbin/init"]
