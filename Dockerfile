FROM ubuntu:latest

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nano
RUN apt install -y wget git
WORKDIR /root/ 
RUN wget https://dist.ipfs.tech/kubo/v0.16.0/kubo_v0.16.0_linux-amd64.tar.gz
RUN tar -xvzf kubo_v0.16.0_linux-amd64.tar.gz
RUN cd kubo
RUN bash install.sh



