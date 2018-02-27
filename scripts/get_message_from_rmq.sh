#!/bin/bash

###################################
## RabbitMQ Access Properties
###################################
IP=10.113.189.194:15672
ID=queuetest
PW=admin

###################################
## RabbitMQ Queue Properties
###################################
queue_name=ha.ConfinementBeta
no_consume=false
query_data='{"count":1,"requeue":'${no_consume}',"encoding":"auto"}'


###################################
## Get Messages
###################################
curl -XPOST -H "content-type:application/json" http://${ID}:${PW}@${IP}/api/queues/%2f/${queue_name}/get -d${query_data}
