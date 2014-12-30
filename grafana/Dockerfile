FROM dhorbach/nginx

MAINTAINER Dzmitry Horbach

ENV GRAFANA_VERSION 1.9.1
ENV GRAFANA grafana-$GRAFANA_VERSION

RUN wget -nv --output-document=/opt/$GRAFANA.tar.gz http://grafanarel.s3.amazonaws.com/$GRAFANA.tar.gz
RUN tar -C /opt --extract --file /opt/$GRAFANA.tar.gz
RUN ln -s /opt/$GRAFANA /opt/grafana

ADD config.js /opt/grafana/config.js
ADD grafana.conf /etc/nginx/conf.d/grafana.conf