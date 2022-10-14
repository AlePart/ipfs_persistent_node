#!/bin/bash
FILE=/root/.init
echo "NODE STARTING"
if test -f "$FILE"; then
    echo "IPFS INIT"
    ipfs init
    touch logstart.log
    rm $FILE
    
    
fi

echo "IPFS START DAEMON"
NOW=`date '+%F_%H:%M:%S'`
echo "$NOW" >> logstart.log
ipfs daemon &

