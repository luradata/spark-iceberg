#!/bin/bash
if [ ! -d "/hadoop/dfs/namenode/current" ]; then
    echo "Formatting namenode..."
    hdfs namenode -format
fi
hdfs namenode