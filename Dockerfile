# CentOS Latest Install
FROM centos:latest
MAINTAINER ueno.k

WORKDIR /opt/

# Python Package Install
RUN set -x && \
    yum groupinstall -y "Development tools" && \
    yum install -y kernel-devel kernel-headers gcc-c++ patch libyaml-devel libffi-devel autoconf automake libtool bison tk-devel zip wget && \
    yum install -y zlib zlib-devel bzip2 bzip2-devel readline readline-devel sqlite sqlite-devel openssl openssl-devel git gdbm-devel python-devel && \
    curl -O https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz && \
    tar zxf Python-3.6.4.tgz && \
    rm -f Python-3.6.4.tgz && \
    cd Python-3.6.4 && \
    ./configure --enable-optimizations && \
    make install && \
    rm -rf Python-3.6.4/ && \
    curl -kL https://bootstrap.pypa.io/get-pip.py | python

# Git Setting
RUN set -x && \
    git config --global user.name hogehoge789 && \
    git config --global user.email hogehoge789@gmail.com && \
    git config --global color.diff auto && \
    git config --global color.status auto && \
    git config --global color.branch auto

COPY id_rsa ~/.ssh/

CMD [ "/bin/bash" ]