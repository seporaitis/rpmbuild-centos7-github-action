FROM centos:centos7

RUN yum install -y \
  createrepo \
  make \
  rpm-build \
  epel-release \
  python2-mock

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
