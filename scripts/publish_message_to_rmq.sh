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
queue_name=ha.ConfinementTest
query_data='{"properties":{"test":"hello"},"routing_key":"","payload":"","payload_encoding":"string"}' 

###################################
## Get Messages
###################################
curl -XPOST -H "content-type:application/json" http://${ID}:${PW}@${IP}/api/exchanges/%2f/${queue_name}/publish -d${query_data}
