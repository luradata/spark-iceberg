# Spark Iceberg

A Docker-based environment for running Apache Spark with Apache Iceberg integration, using HDFS as the underlying storage system.

## Overview

This project provides a complete environment for working with Apache Spark and Apache Iceberg, including:

- Apache Spark cluster (master + worker)
- Apache Hadoop HDFS (namenode + datanode)
- Apache Iceberg integration

## Prerequisites

- Docker and Docker Compose
- Make (optional, for using Makefile commands)

## Quick Start

### 1. Clone the repository

```bash
git clone <https://github.com/luradata/spark-iceberg.git>
cd spark-iceberg
```

### 2. Initialize the required directories

```bash
make init
```

### 3. Start the services

```bash
make up
```

### 4. Access the services

- Spark Master UI: <http://localhost:8080>
- HDFS NameNode UI: <http://localhost:9870>
- Spark Worker UI: <http://localhost:8081>

## Project Structure

```text
.
├── hadoop/              # Hadoop configuration and data directories
├── spark/               # Spark configuration and libraries
├── docker-compose.yml   # Docker Compose configuration
├── Makefile             # Helper commands
└── .env                 # Environment variables
```

## Available Commands

- `make init`: Create required directories
- `make clean`: Clean up logs and temporary directories
- `make up`: Start all containers
- `make down`: Stop all containers
- `make restart`: Restart all containers
- `make logs`: View container logs
- `make ps`: List running containers
- `make help`: Display available commands

## Configuration

The environment can be configured through the following files:

- `.env`: Environment variables for Docker Compose
- `hadoop/config/`: Hadoop configuration files
- `spark/conf/`: Spark configuration files

## Services

### HDFS

- NameNode: Runs on port 9870 (UI) and 9000 (HDFS)
- DataNode: Runs on ports 9864 and 9866

### Spark

- Master: Runs on port 7077 (cluster) and 8080 (UI)
- Worker: Runs on port 8081 (UI)

## License

This project is licensed under the terms specified in the [LICENSE](./LICENSE) file.
