# nova-cinder-any-state-get-servers-patch
This patch enables extra search_opts (any_state) in requests to nova/cinder api


Example of usage:
curl  -g -i -X GET http://192.168.0.2:8774/v2.1/servers/detail?any_state=True -H 'X-Auth-Token: $TOKEN'
Result:
all servers, including deleted and active
