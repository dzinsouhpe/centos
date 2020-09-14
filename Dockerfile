FROM centos:7.8.2003
LABEL maintainer="dietrich.zinsou@hpe.com"

RUN yum install -y wget curl tar unzip python python-setuptools python-argparse python-sssdconfig python-ldap

CMD ["/sbin/init"]
