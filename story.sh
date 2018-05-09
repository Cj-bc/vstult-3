#!/usr/local/bin/bash

#source .sourcefiles
IFSorigin=$IFS
Pages=( "table" "introduction" )
for paneNum in ${Pages[@]}
do
  read tap
  while [ "$tap" = "¥r" ] # wait until return key was pushed
  do
    :
  done

  clear
  say -v "Alex" -f panes/$paneNum.txt &
  while IFS= read -rN1 char;
  do
    printf "$char";
    sleep 0.1;
  done < panes/$paneNum.txt


done
IFS=$IFSorigin
