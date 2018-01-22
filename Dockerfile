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
    rm -f Python-3.6.4.tgz
    cd Python-3.6.4 && \
    ./configure --enable-optimizations && \
    make install && \
    rm -rf Python-3.6.4/ && \
    curl -kL https://bootstrap.pypa.io/get-pip.py | python && \
    rpm --import https://packages.microsoft.com/keys/microsoft.asc && \
    sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' && \
    yum check-update && \
    yum install -y code && \

CMD [ "/bin/bash" ]