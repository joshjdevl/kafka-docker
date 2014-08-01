#!/bin/bash

ID=$1
PORT=$2
HOST_IP=$3
ZOOKEEPER=$4

docker run -p $PORT:$PORT \
	-e BROKER_ID=$ID -e HOST_IP=$HOST_IP -e PORT=$PORT -e ZOOKEEPER_ADDRESS=$ZOOKEEPER \
	-d joshjdevl/kafka

