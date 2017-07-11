#!/bin/bash
export KAFKA_HOME="/home/kafka/kafka_2.11-0.10.2.1"
export JAVA_HOME="/home/kafka/jdk1.8.0_131"
export LOG_DIR="/media/ephemeral0/server-logs"
KAFKA_OPTS="$KAFKA_OPTS -javaagent:$KAFKA_HOME/jmx_prometheus_javaagent-0.9.jar=7071:$KAFKA_HOME/kafka-0-8-2.yml"
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties
