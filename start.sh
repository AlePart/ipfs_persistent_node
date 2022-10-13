#!/bin/bash
FILE=/root/.init
echo "NODE STARTING"
if test -f "$FILE"; then
    echo "IPFS INIT"
    ipfs init
    rm $FILE
    
    
fi
echo "IPFS START DAEMON"
while :
do
pgrep ipfs
if [ $? -eq 0 ]
then
  ipfs daemon
fi
sleep 1
done

