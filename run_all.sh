./config_nodes/run_mongo_cfg_nodes.sh 172.17.0.5 172.17.0.6
./dbs/run_mongo_shard_nodes.sh 172.17.0.7 172.17.0.8 172.17.0.9
./routers/run_routers.sh 172.17.0.10 172.17.0.7 172.17.0.8 172.17.0.9
