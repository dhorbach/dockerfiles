FROM dhorbach/base

MAINTAINER Dzmitry Horbach

ENV EMBEDDED_BIN  /opt/td-agent/embedded/bin
ENV FLUENT_GEM    $EMBEDDED_BIN/fluent-gem

RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh
RUN apt-get update && \
    apt-get -y install make libcurl4-gnutls-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN $FLUENT_GEM install fluent-plugin-kafka && \
    $FLUENT_GEM install fluent-plugin-influxdb && \
    $FLUENT_GEM install fluent-plugin-secure-forward && \
    $FLUENT_GEM install fluent-plugin-elasticsearch

CMD ["/opt/td-agent/embedded/bin/fluentd"]
