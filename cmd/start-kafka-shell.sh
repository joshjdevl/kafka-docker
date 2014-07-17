#!/bin/bash
#docker run -link zookeeper:zk -i -t joshjdevl/kafka /bin/bash
docker run -link cluster_zookeeper_1:zk -i -t joshjdevl/kafka /bin/bash

