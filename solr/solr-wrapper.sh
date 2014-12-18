#!/bin/bash

if [ ! -f /opt/solr/example/solr/solr.xml ]; then
    cp /opt/solr/solr.xml /opt/solr/example/solr/solr.xml
fi

/opt/solr/bin/solr "$@"