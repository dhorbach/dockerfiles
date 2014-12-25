#!/bin/bash

sed -i "s/zookeeper.connect.*/zookeeper.connect=$ZOOKEEPER_CONNECT/g" config/server.properties

$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties