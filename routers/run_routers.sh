docker run --name mongo_router -td mongo_router:latest

sleep 3

mongo --host "$1:27017" --eval 'sh.addShard("rs0/'$2':27018")'
mongo --host "$1:27017" --eval 'sh.addShard("rs0/'$3':27018")'
mongo --host "$1:27017" --eval 'sh.addShard("rs0/'$4':27018")'
mongo --host "$1:27017" --eval 'sh.enableSharding("Requirement")'
