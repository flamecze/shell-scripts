FROM ubuntu:18.04

RUN apt update && apt install sudo
RUN useradd -m test
RUN echo 'test:test' | chpasswd
RUN usermod -aG sudo test

USER test
RUN mkdir /home/test/scripts
WORKDIR /home/test/scripts

