#!/bin/bash

if [ ! -f /cores/solr.xml ]; then
    cp /opt/solr/solr.xml /cores/solr.xml
fi

/opt/solr/bin/solr "$@"