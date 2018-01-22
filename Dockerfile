# CentOS Latest Install
FROM centos:latest
MAINTAINER ueno.k

# Python Package Install
RUN set -x && \
    curl -kL https://bootstrap.pypa.io/get-pip.py | python && \

CMD [ "/bin/bash" ]