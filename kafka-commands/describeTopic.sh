#!/bin/bash

topicName=$1
$KAFKA_HOME/bin/kafka-topics.sh --describe --topic ${topicName} \
--zookeeper $ZK_PORT_2181_TCP_ADDR 
