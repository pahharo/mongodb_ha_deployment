docker run --name mongo_router --net mongo_net --ip 172.18.0.10 -td m4nusl/mongo_router:latest

sleep 10

mongo --host "$1:27017" --eval 'sh.addShard("rs0/'$2':27018")'
mongo --host "$1:27017" --eval 'sh.addShard("rs0/'$3':27018")'
mongo --host "$1:27017" --eval 'sh.addShard("rs0/'$4':27018")'
mongo --host "$1:27017" --eval 'sh.enableSharding("Requirement")'
mongo --host "$1:27017" --eval 'quit()'
