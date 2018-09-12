#!/bin/bash

# Dependecy validation
while ! nc -z namenode 50070;
      do
        echo Waiting namenode...;
        sleep 1;
      done;
      echo Connected!;

# Environment variables
: ${HADOOP_PREFIX:=/usr/local/hadoop}

# Init hadoop-env
$HADOOP_PREFIX/etc/hadoop/hadoop-env.sh
/bin/rm -rf /tmp/*.pid

# Get hostname
echo "Current Hostname: " `hostname`

echo "Starting Resourcemanager"
$HADOOP_PREFIX/sbin/yarn-daemon.sh start resourcemanager

echo "Starting Job History Server"
$HADOOP_PREFIX/sbin/mr-jobhistory-daemon.sh start historyserver


# Workaround for graceful shutdown. ..... 

  while [ "" == '' ]; do
    sleep 1
  done