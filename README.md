# ipfs_persistent_node

The given docker-compose.yaml use 1 network called net_1 and 1 persistent external volumes node_1 used for initialization and starting

you must Clone this repo than
and the network
```
docker network create --driver=bridge --subnet=192.168.1.0/24 net_1
```
Pull the image
```
docker pull alepart/ipfs_persistent_node:1.1
```
run container with compose
```
docker compose up
```

to get the shell you may use a command like this
```
sudo docker exec -it  ipfs_persistent_node-ipfs_1-1  /bin/bash
```
