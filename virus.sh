#!bin/bash
while true
do
  x=$(date +%N-%S)
  echo "♥">>$x.txt
done
