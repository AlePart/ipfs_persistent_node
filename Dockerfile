FROM alepart/ipfs_persistent_node

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nano
RUN apt install -y wget git
WORKDIR /root/ 
WORKDIR ipfs-cluster
RUN wget https://dist.ipfs.tech/ipfs-cluster-ctl/v1.0.4/ipfs-cluster-ctl_v1.0.4_linux-amd64.tar.gz
RUN wget https://dist.ipfs.tech/ipfs-cluster-service/v1.0.4/ipfs-cluster-service_v1.0.4_linux-amd64.tar.gz
RUN wget https://dist.ipfs.tech/ipfs-cluster-follow/v1.0.4/ipfs-cluster-follow_v1.0.4_linux-amd64.tar.gz

RUN tar -xvf ipfs-cluster-follow_v1.0.4_linux-amd64.tar.gz
RUN tar -xvf ipfs-cluster-service_v1.0.4_linux-amd64.tar.gz
RUN tar -xvf ipfs-cluster-ctl_v1.0.4_linux-amd64.tar.gz
RUN chmod u+x ipfs-cluster-service/ipfs-cluster-service
RUN chmod u+x ipfs-cluster-ctl/ipfs-cluster-ctl
RUN chmod u+x ipfs-cluster-follow/ipfs-cluster-follow
RUN cp ipfs-cluster-service/ipfs-cluster-service /usr/bin
RUN cp ipfs-cluster-ctl/ipfs-cluster-ctl /usr/bin
RUN cp ipfs-cluster-follow/ipfs-cluster-follow /usr/bin
WORKDIR /root/ 
RUN rm -rf ipfs-cluster



