#!/bin/bash

if [ ! "$(docker network ls | grep mongo_net)" ]; then
  echo "Creating mongo_net network ..."
  ./network/create_network.sh 172.18.0.0/16
fi
echo "Creating mongo config nodes..."
./config_nodes/run_mongo_cfg_nodes.sh 172.18.0.5 172.18.0.6

echo "Creating mongo dbs..."
./dbs/run_mongo_shard_nodes.sh 172.18.0.7 172.18.0.8 172.18.0.9

echo "Creating mongo router..."
./routers/run_routers.sh 172.18.0.10 172.18.0.7 172.18.0.8 172.18.0.9
