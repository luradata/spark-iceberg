start-master.sh -p 7077
start-worker.sh spark://localhost:7077
start-history-server.sh
start-thriftserver.sh  --driver-java-options "-Dderby.system.home=/tmp/derby"

# Entrypoint, for example spark-shell, pyspark or spark-sql
if [[ $# -gt 0 ]] ; then
    eval "$1"
fi