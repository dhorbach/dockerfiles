FROM dhorbach/oraclejdk7

MAINTAINER Dzmitry Horbach

ENV KAFKA_VERSION 0.8.1.1
ENV SCALA_VERSION 2.9.2
ENV KAFKA kafka_$SCALA_VERSION-$KAFKA_VERSION
ENV KAFKA_HOME /opt/kafka

ENV ZOOKEEPER_CONNECT localhost:2181

RUN wget -nv --output-document=/opt/$KAFKA.tgz http://www.us.apache.org/dist/kafka/$KAFKA_VERSION/$KAFKA.tgz && \
    tar -C /opt --extract --file /opt/$KAFKA.tgz && \
    rm /opt/$KAFKA.tgz && \
    ln -s /opt/$KAFKA $KAFKA_HOME

ADD start-kafka.sh $KAFKA_HOME/start-kafka.sh

WORKDIR $KAFKA_HOME

EXPOSE 9092

# 4.10.2 has solr.autoSoftCommit.maxTime hardcoded to 3s
CMD ["./start-kafka.sh"]
