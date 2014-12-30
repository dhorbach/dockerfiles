#!/bin/bash

if [ ! -f /opt/solr/example/solr/solr.xml ]; then
    cp /opt/solr/solr.xml /opt/solr/example/solr/solr.xml
fi

/opt/solr/bin/solr -f -a -Djetty.maxidletime=600000