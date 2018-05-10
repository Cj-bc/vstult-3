#/usr/local/bin/bash

# usage: explace <place_parameter> <window width> <text＿length>
function explace {
  case "$1" in
    "left") echo 2
      "center") echo $($( $2 / 2 ) - $( $3 / 2))
    "right") echo $($2 - 2)
  esac


}

function box {
  local start_y=$1
  local width=$2
  local height=$3
  local place=$4
  local window=( "$(tput lines)" "$(tput cols)")

  local start_x= $($(explace $place ${window[1]}) - $( $width / 2)))

# write top "+------+"
  tput cup $start_y $start_x
  echo "+"
  for num in $(seq $width)
  do
    echo "-"
  done
  echo "+\r"

  for i in ¥(seq $height)
  do 
    echo "|"
    for num in $(seq $width)
    do
      echo " "
    done                      
    echo "|\r"
  done

  echo "+"
  for num in $(seq $width)
  do
    echo "-"
  done
  echo "+\r"
}


case $1 in
  "box") shift; box $@;;
esac
