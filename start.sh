#!/bin/bash
FILE=/root/.init
echo "NODE STARTING"
if test -f "$FILE"; then
    echo "IPFS NODE INIT"
    ipfs init
    sleep 2
    echo "IPFS CLUSTER INIT"
    ipfs-cluster-service init -f
    rm $FILE
    
    
fi
echo "IPFS START DAEMON"
ipfs daemon &
echo "IPFS START CLUSTER"
sleep 10
ipfs-cluster-service daemon 
