# ipfs_persistent_node

The given docker-compose.yaml use 1 network called net_1 and 1 persistent external volumes node_1 used for initialization and starting

you must Clone this repo than
you must create 1 volumes with the following command
```
docker volume create node_1
```
and the network
```
docker network create --driver=bridge --subnet=192.168.1.0/24 net_1
```
copy the start.sh and the .init in the given node_1 external volumes
```
cp ./.init /var/lib/docker/volumes/node_1/_data
cp ./start.sh /var/lib/docker/volumes/node_1/_data
```
change user privileages to execution to start.sh
```
chmod u+x /var/lib/docker/volumes/node_1/_data/start.sh
```

Pull the image
```
docker pull alepart/ipfs_persistent_node:1.0
```

run container with compose
```
docker compose up
```

to get the shell
```
sudo docker exec -it  ipfs_persistent_node-ipfs_1-1  /bin/bash
```
