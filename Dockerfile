from ubuntu:precise
MAINTAINER joshjdevl < joshjdevl [at] gmail {dot} com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install python-software-properties software-properties-common
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
RUN apt-get update 

RUN add-apt-repository ppa:apt-fast/stable
RUN apt-get update
RUN apt-get -y install apt-fast

RUN apt-fast install -y unzip  openjdk-7-jdk wget git coreutils

ENV SCALA_VERSION 2.9.2
RUN wget -q http://www.scala-lang.org/files/archive/scala-$SCALA_VERSION.tgz -O /tmp/scala_$SCALA_VERSION.tgz
RUN tar xfz /tmp/scala_$SCALA_VERSION.tgz -C /opt

ENV KAFKA_VERSION 2.9.2-0.8.1.1
RUN wget -q https://archive.apache.org/dist/kafka/0.8.1.1/kafka_$KAFKA_VERSION.tgz -O /tmp/kafka_$KAFKA_VERSION.tgz
RUN tar xfz /tmp/kafka_$KAFKA_VERSION.tgz -C /opt

ENV KAFKA_HOME /opt/kafka_$KAFKA_VERSION
ENV PATH /opt/scala_$SCALA_VERSION/bin:$KAFKA_HOME/bin:$PATH
ADD start-kafka.sh /usr/bin/start-kafka.sh 
ADD kafka-commands/createTopic.sh /usr/bin/createTopic.sh
ADD kafka-commands/describeTopic.sh /usr/bin/describeTopic.sh
CMD start-kafka.sh 
