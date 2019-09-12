#!bin/bash
reset="\e[m"
dark_blue="\e[38;5;21m"
set -e
while true
do
  x=$(date +%N-%S)
  mkdir $x
  echo "$dark_blue $HOME/$x/ $reset"
done
