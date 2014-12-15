FROM dhorbach/oraclejdk7

MAINTAINER Dzmitry Horbach

ENV SOLR_VERSION 4.10.2
ENV SOLR solr-$SOLR_VERSION

RUN wget -nv --output-document=/opt/$SOLR.tgz http://www.mirrorservice.org/sites/ftp.apache.org/lucene/solr/$SOLR_VERSION/$SOLR.tgz && \
    tar -C /opt --extract --file /opt/$SOLR.tgz && \
    rm /opt/$SOLR.tgz && \
    ln -s /opt/$SOLR /opt/solr && \
    rm -rf /opt/solr/example/solr/collection1 && \
    mkdir /logs && rm -rf /opt/solr/example/logs && ln -s /logs /opt/solr/example/logs && \
    ln -s /opt/solr/example/solr /cores && \
    mkdir /data

EXPOSE 8983

WORKDIR /opt/solr

CMD ["/bin/bash", "-c", "/opt/solr/bin/solr -f"]
