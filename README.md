# ipfs_persistent_node
The given docker-compose.yaml use 2 different networks called net_1 and net_2 and 2 persistent external volumes node_1 and node_2 used for initialization and starting

you must create 2 volumes with the following command

```
docker volume create node_1
docker volume create node_2
```
and the networks
```
docker network create --driver=bridge --subnet=192.168.1.0/24 net_1
docker network create --driver=bridge --subnet=192.168.2.0/24 net_2
```
copy the start.sh and the .init in the given node_1 node_2 external volumes
```
cp ./.init /var/lib/docker/volumes/node_1/_data
cp ./.init /var/lib/docker/volumes/node_2/_data
cp ./start.sh /var/lib/docker/volumes/node_1/_data
cp ./start.sh /var/lib/docker/volumes/node_2/_data
```

Pull the image
```
docker pull alepart/ipfs_persistent_node
```

run container with compose
```
docker compose up
```

