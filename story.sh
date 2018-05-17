#!/usr/local/bin/bash

mesg n # disallow display message
mkfifo vstult.anno.p
mkfifo p
Pages=( "title" "table" "introduction" "main-projects" "other-activities" "last")
for paneNum in ${Pages[@]}
do
 while read line # wait until return key was pushed
 do
   [ "$line" = "" ] && break
 done

  clear
  if [ "$1" = "-x" ]
  then
    bash -vx ./panes/${paneNum}.sh
  else
    ./panes/${paneNum}.sh
  fi
done

rm vstult.anno.p
rm p
