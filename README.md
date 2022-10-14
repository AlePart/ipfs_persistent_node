# ipfs_persistent_node

you must Clone this repo than

Pull the image
```
docker pull alepart/ipfs_persistent_node:1.2.1
```
run container with compose
```
docker run -d  --name ipfs_1 -v v_1:/root -v v_2:/root/.ipfs  alepart/ipfs_persistent_node:1.2.1
```

to get the shell you may use a command like this
```
sudo docker exec -it  ipfs_1  /bin/bash
```
