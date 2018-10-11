FROM ubuntu:18.04

RUN apt-get update && apt-get install sudo
RUN useradd -m test
RUN echo 'test:test' | chpasswd
RUN usermod -aG sudo test

USER test
RUN mkdir /home/test/scripts
WORKDIR /home/test/scripts

