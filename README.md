# ipfs_persistent_node

The given docker-compose.yaml use 1 network called net_1 and 1 persistent external volumes node_1 used for initialization and starting

you must Clone this repo than

Pull the image
```
docker pull alepart/ipfs_persistent_node:1.2
```
run container with compose
```
docker run -d  --name ipfs_1 -v v_1:/root -v v_2:/root/.ipfs  alepart/ipfs_persistent_node:1.2
```

to get the shell you may use a command like this
```
sudo docker exec -it  ipfs_1  /bin/bash
```
