#!/bin/bash
rm -rf /hadoop/dfs/datanode/*
chown -R nobody:nobody /hadoop/dfs/datanode
chmod 755 /hadoop/dfs/datanode
hdfs datanode
