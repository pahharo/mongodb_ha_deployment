docker run --name mongodb_1 -td mongo_dbs:latest

docker run --name mongodb_2 -td mongo_dbs:latest

docker run --name mongodb_3 -td mongo_dbs:latest

sleep 3
mongo --host "$1:27018" --eval 'rs.initiate({"_id" : "rs0", "members" : [{"_id" : 0,"host" : "'$1':27018"}, {"_id" : 1,"host" : "'$2':27018"}, {"_id" : 2,"host" : "'$3':27018"}]})'
