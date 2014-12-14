FROM dhorbach/openjdk7

MAINTAINER Dzmitry Horbach


ENV SOLR_VERSION 4.10.2
ENV SOLR solr-$SOLR_VERSION

RUN wget -nv --output-document=/opt/$SOLR.tgz http://www.mirrorservice.org/sites/ftp.apache.org/lucene/solr/$SOLR_VERSION/$SOLR.tgz && \
  tar -C /opt --extract --file /opt/$SOLR.tgz && \
  rm /opt/$SOLR.tgz && \
  ln -s /opt/$SOLR /opt/solr

EXPOSE 8983

CMD ["/bin/bash", "-c", "/opt/solr/bin/solr -f"]
