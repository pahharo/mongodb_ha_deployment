docker run --name mongo_cfg_1 -td mongo_config:latest

docker run --name mongo_cfg_2 -td mongo_config:latest

sleep 3

mongo --host "$1:27019" --eval 'rs.initiate({"_id" : "crs0", "configsvr": true, "members" : [{"_id" : 0,"host" : "'$1':27019"}, {"_id" : 1,"host" : "'$2':27019"}]})'
