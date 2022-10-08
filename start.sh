#!/bin/bash
FILE=/root/.init
echo "NODE STARTING"
if test -f "$FILE"; then
    echo "IPFS INIT"
    ipfs init
    rm /root/.init
    
    
fi
echo "IPFS START DAEMON"
ipfs daemon
