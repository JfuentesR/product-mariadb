# First get a TOKEN
# export TOKEN='<TOKEN>'
# export AUTH="x-auth-token: $TOKEN"
http POST http://paas:6000/bigdata/api/v1/products name=postgresqlbeta version=11.8 description='Sophisticated open-source Object-Relational DBMS supporting almost all SQL constructs, including subselects, transactions, and user-defined types. BETA' logo_url='http://hadoop.cesga.es/img/postgresql-icon.gif' x-auth-token:$TOKEN
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgresqlbeta/11.8/template --data-binary @template.json -H "Content-type: application/json" -H "$AUTH"
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgresqlbeta/11.8/options --data-binary @options.json -H "$AUTH"
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgresqlbeta/11.8/orchestrator --data-binary @fabfile.py -H "$AUTH"

# Launching
# http POST http://paas:6000/bigdata/api/v1/products/postgresql/11.8 password="verysecret" x-auth-token:$TOKEN

