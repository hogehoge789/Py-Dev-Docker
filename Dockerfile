# Python Latest Install
FROM python:latest
MAINTAINER ueno.k

# VIM Install
RUN set -x && \
      apt-get update && \
      apt-get install -y vim

# Git Setting
RUN set -x && \
    git config --global user.name hogehoge789 && \
    git config --global user.email hogehoge789@gmail.com && \
    git config --global color.diff auto && \
    git config --global color.status auto && \
    git config --global color.branch auto

WORKDIR /opt/

CMD [ "/bin/bash" ]
