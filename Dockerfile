FROM ubuntu:16.04 

# install python and jupyter notebook
RUN apt-get update && apt-get install -y \
    curl \
    texlive-full

# add user abc
RUN adduser --disabled-password --gecos "" abc
RUN usermod -aG sudo abc
USER abc
RUN mkdir -p /home/abc
ENV HOME=/home/abc
ENV SHELL=/bin/bash
ENV USER=abc
VOLUME /home/abc
WORKDIR /home/abc

