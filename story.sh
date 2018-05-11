#!/usr/local/bin/bash

Pages=( "title" "table" "introduction" "main-projects" "other-activities")
for paneNum in ${Pages[@]}
do
  read tap
  while [ "$tap" = "¥r" ] # wait until return key was pushed
  do
    :
  done

  clear
  ./panes/${paneNum}.sh


done
