#!/bin/bash
FILE=/root/.init
echo "NODE STARTING"
if test -f "$FILE"; then
    echo "IPFS INIT"
    ipfs init
    rm $FILE
    
    
fi
touch logstart.log
echo "IPFS START DAEMON"
ipfs daemon


