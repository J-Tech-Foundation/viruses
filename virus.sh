#!bin/bash
reset="\e[m"
dark_blue="\e[38;5;21m"
set -e
while true
do
  x=$(date +%N-%S)
  echo "♥">>$x.txt
  echo $dark_blue $x $reset
done
