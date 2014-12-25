FROM dhorbach/base

MAINTAINER Dzmitry Horbach

ENV EMBEDDED_BIN  /opt/td-agent/embedded/bin
ENV FLUENT_GEM    $EMBEDDED_BIN/fluent-gem

RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh
RUN $FLUENT_GEM install fluent-plugin-kafka

CMD ["/opt/td-agent/embedded/bin/fluentd"]
