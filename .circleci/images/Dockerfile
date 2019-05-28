FROM node:stretch
MAINTAINER Vasiliy Yorkin

RUN npm i -g pulp bower

ENV PURESCRIPT_DOWNLOAD_SHA1 1969df7783f1e95b897f5b36ab1e12ab9cbc9166

RUN cd /opt \
    && wget https://github.com/purescript/purescript/releases/download/v0.12.5/linux64.tar.gz \
    && echo "$PURESCRIPT_DOWNLOAD_SHA1 linux64.tar.gz" | sha1sum -c - \
    && tar -xvf linux64.tar.gz \
    && rm /opt/linux64.tar.gz

ENV PATH /opt/purescript:$PATH

RUN userdel node
RUN useradd -m -s /bin/bash pureuser

WORKDIR /home/pureuser

USER pureuser
