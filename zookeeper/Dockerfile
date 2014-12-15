FROM dhorbach/oraclejdk7

MAINTAINER Dzmitry Horbach

ENV ZOOKEEPER_VER 3.4.6

RUN wget -q -O - http://apache.mirrors.pair.com/zookeeper/zookeeper-${ZOOKEEPER_VER}/zookeeper-${ZOOKEEPER_VER}.tar.gz | tar -xzf - -C /opt && \
    ln -s /opt/zookeeper-${ZOOKEEPER_VER} /opt/zookeeper && \
    cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg && \
    mkdir -p /tmp/zookeeper 

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
