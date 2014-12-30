FROM dhorbach/base

MAINTAINER Dzmitry Horbach

ENV INFLUXDB_VERSION 0.8.8
ENV INFLUXDB influxdb_${INFLUXDB_VERSION}_amd64.deb

RUN wget -nv --output-document=/opt/$INFLUXDB http://s3.amazonaws.com/influxdb/$INFLUXDB
RUN dpkg -i /opt/$INFLUXDB
RUN rm /opt/$INFLUXDB

EXPOSE 8083 8086

CMD ["influxdb", "-config=/opt/influxdb/current/config.toml"]