#!/bin/bash
FILE=/root/.init
echo "NODE STARTING"
if test -f "$FILE"; then
    echo "IPFS INIT"
    ipfs init
    rm $FILE
    
    
fi
rm logstart.log
touch logstart.log
echo "IPFS START DAEMON"
while :
do
PG=$(pgrep ipfs)
if [ -z "$PG" ]
then
  NOW=`date '+%F_%H:%M:%S'`
  echo "$NOW" >> logstart.log
  ipfs daemon &
fi
sleep 1
done

