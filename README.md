# ipfs_persistent_node

Pull the image
```
docker pull alepart/ipfs_persistent_node:1.3
```
run container with compose
```
docker run -d --restart=always --name ipfs_1 -v v_1:/root -v v_2:/root/.ipfs  alepart/ipfs_persistent_node:1.3  /bin/bash -c /root/start.sh

```

to get the shell you may use a command like this
```
sudo docker exec -it  ipfs_1  /bin/bash
```
