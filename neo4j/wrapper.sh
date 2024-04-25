#!/bin/bash

# turn on bash's job control
set -m

# Start the primary process and put it in the background
/startup/docker-entrypoint.sh neo4j &

# wait for Neo4j
wget --quiet --tries=10 --waitretry=2 -O /dev/null http://localhost:7474

# Start the helper process
./load.sh

fg %1