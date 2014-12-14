FROM dhorbach/base

MAINTAINER Dzmitry Horbach

RUN apt-get -y install openjdk-7-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

CMD ["/bin/bash"]
