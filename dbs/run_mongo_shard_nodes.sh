docker run --name mongodb_1 --net mongo_net --ip 172.18.0.7 -td m4nusl/mongo_dbs:latest

docker run --name mongodb_2 --net mongo_net --ip 172.18.0.8 -td m4nusl/mongo_dbs:latest

docker run --name mongodb_3 --net mongo_net --ip 172.18.0.9 -td m4nusl/mongo_dbs:latest

sleep 3
mongo --host "$1:27018" --eval 'rs.initiate({"_id" : "rs0", "members" : [{"_id" : 0,"host" : "'$1':27018"}, {"_id" : 1,"host" : "'$2':27018"}, {"_id" : 2,"host" : "'$3':27018"}]})'
mongo --host "$1:27018" --eval 'quit()'
