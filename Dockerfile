FROM ubuntu:latest

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nano
RUN apt install -y wget git
WORKDIR /root/ 
RUN wget https://dist.ipfs.tech/kubo/v0.16.0/kubo_v0.16.0_linux-amd64.tar.gz
RUN tar -xvzf kubo_v0.16.0_linux-amd64.tar.gz
WORKDIR  /root/kubo
RUN bash install.sh
WORKDIR /root/ 
RUN git clone https://github.com/AlePart/ipfs_persistent_node.git
WORKDIR /root/ipfs_persistent_node
RUN cp start.sh /root/
RUN cp .init /root/
WORKDIR /root/ 
RUN rm -rf ipfs_persistent_node
RUN chmod u+x start.sh



