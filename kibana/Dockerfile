FROM dhorbach/nginx

MAINTAINER Dzmitry Horbach

ENV KIBANA_VERSION 3.1.2
ENV KIBANA kibana-$KIBANA_VERSION

RUN wget -nv --output-document=/opt/$KIBANA.tar.gz https://download.elasticsearch.org/kibana/kibana/$KIBANA.tar.gz &&\
    tar -C /opt --extract --file /opt/$KIBANA.tar.gz &&\
    ln -s /opt/$KIBANA /opt/kibana

ADD config.js /opt/kibana/config.js
ADD kibana.conf /etc/nginx/conf.d/kibana.conf