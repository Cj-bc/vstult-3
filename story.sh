#!/usr/local/bin/bash

mesg n # disallow display message
mkfifo vstult.anno.p
mkfifo p
Pages=( "title" "table" "introduction" "main-projects" "other-activities")
for paneNum in ${Pages[@]}
do
 while read line # wait until return key was pushed
 do
   [ "$line" = "" ] && break
 done

  clear
  ./panes/${paneNum}.sh
done
