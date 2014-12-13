FROM ubuntu:14.04

MAINTAINER Dzmitry Horbach dim.horbach@gmail.com

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update &&\
    apt-get -y install vim wget

CMD ["/bin/bash"]