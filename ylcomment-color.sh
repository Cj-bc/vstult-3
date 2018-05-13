#!/usr/local/bin/bash

# prepair
mkfifo ylcomment.p
[ -z "$1" ] && echo "no ID specified" && exit 1

# call ylcomment and get output to stdout
./ylcomment/ylcomment $1 > ylcomment.p

# source color info
. ~/.ylconfig

while read name contents
do
  tput setaf 6 # $color_name # change color
  echo -n "$name"
  tput setaf 0 #$color_comment # change color
  echo "$contents"
  tput sgr0 # reset tput setting
done < ylcomment.p
