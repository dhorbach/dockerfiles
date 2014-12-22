FROM dhorbach/oraclejdk7

MAINTAINER Dzmitry Horbach

ENV SOLR_VERSION 4.10.2
ENV SOLR solr-$SOLR_VERSION

# unzip for zkcli.sh 
RUN apt-get update && \
    apt-get -y install unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    wget -nv --output-document=/opt/$SOLR.tgz http://www.mirrorservice.org/sites/ftp.apache.org/lucene/solr/$SOLR_VERSION/$SOLR.tgz && \
    tar -C /opt --extract --file /opt/$SOLR.tgz && \
    rm /opt/$SOLR.tgz && \
    ln -s /opt/$SOLR /opt/solr && \
    mkdir /logs && rm -rf /opt/solr/example/logs && ln -s /logs /opt/solr/example/logs

ADD solr.xml /opt/solr/
ADD solr-wrapper.sh /opt/solr/

RUN chmod +x /opt/solr/solr-wrapper.sh

EXPOSE 8983

WORKDIR /opt/solr

# 4.10.2 has solr.autoSoftCommit.maxTime hardcoded to 3s
CMD ["/bin/bash", "-c", "/opt/solr/solr-wrapper.sh -f -a -Dsolr.autoSoftCommit.maxTime=-1 > /dev/null 2>&1"]
