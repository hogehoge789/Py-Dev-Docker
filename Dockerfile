# CentOS Latest Install
FROM python:latest
MAINTAINER ueno.k

# Git Setting
RUN set -x && \
    git config --global user.name hogehoge789 && \
    git config --global user.email hogehoge789@gmail.com && \
    git config --global color.diff auto && \
    git config --global color.status auto && \
    git config --global color.branch auto

CMD [ "/bin/bash" ]
