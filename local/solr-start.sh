init-var-solr
precreate-core authority /opt/solr/server/solr/configsets/dspace/authority
cp -r -u /opt/solr/server/solr/configsets/dspace/authority/* authority
precreate-core oai /opt/solr/server/solr/configsets/dspace/oai
cp -r -u /opt/solr/server/solr/configsets/dspace/oai/* oai
precreate-core search /opt/solr/server/solr/configsets/dspace/search
cp -r -u /opt/solr/server/solr/configsets/dspace/search/* search
precreate-core statistics /opt/solr/server/solr/configsets/dspace/statistics
cp -r -u /opt/solr/server/solr/configsets/dspace/statistics/* statistics
exec solr -f -Dlog4j2.formatMsgNoLookups=true
