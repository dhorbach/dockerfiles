FROM dhorbach/base

MAINTAINER Dzmitry Horbach

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

RUN apt-get update && \
    apt-get -y install openjdk-7-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
