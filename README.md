# mongodb_ha_deployment
MongoDB HA deployment with docker

## Pull images (Option 1)
To pull the images from the repo:
```bash
# ./pull_containers.sh
```

## Build images (Option 2)
To build images from local project:
```bash
# ./build_containers.sh
```

## Run containers:
To deploy our mongodb cluster with the default configuration:
```bash
# ./run_all.sh
```

### Check that all is ok:
To check that all is working ok:
```bash
# mongo --host 172.18.0.10 Requirement --eval 'db.Requirements.insertOne({"Granada": "Alhambra"})'
# mongo --host 172.18.0.10 Requirement --eval 'db.Requirements.find()'
```
If it goes well, now you have to bring down the primary mongodb:
```bash
# docker stop mongodb_1
```
After that, you have to request again for the content of the Requirements collection:
```bash
# mongo --host 172.18.0.10 --eval 'db.Requirements.find()'
```
If it does not respond in the first request, try again (the cluster has to reconfigure).  
The respond must be the same ({"Granada": "Alhambra"}).

### Remove containers
To remove the containers:
```bash
# ./remove_containers.sh
```
 
