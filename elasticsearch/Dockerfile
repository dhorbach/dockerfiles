FROM dhorbach/oraclejdk7

MAINTAINER Dzmitry Horbach

ENV ES_VERSION 1.4.1
ENV ES elasticsearch-$ES_VERSION

RUN wget -nv --output-document=/opt/$ES.tgz https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES.tar.gz && \
    tar -C /opt --extract --file /opt/$ES.tgz && \
    rm -f $ES_PKG_NAME.tar.gz && \
    ln -s /opt/$ES /opt/elasticsearch

VOLUME ["/data"]

ADD elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml

WORKDIR /opt/elasticsearch

EXPOSE 9200
EXPOSE 9300

CMD ["/opt/elasticsearch/bin/elasticsearch"]