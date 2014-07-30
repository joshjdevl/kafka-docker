#!/bin/bash

topicName=$1
numberPartitions=$2
replicationFactor=$3
$KAFKA_HOME/bin/kafka-topics.sh --create --topic ${topicName} \
--partitions ${numberPartitions} --zookeeper $ZK_PORT_2181_TCP_ADDR --replication-factor ${replicationFactor}
