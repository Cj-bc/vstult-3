#/usr/local/bin/bash

# usage: explace <place_parameter> <window width> <text＿length>
function explace {
  case "$1" in
    "left") echo 2;;
    "center") echo $(($(($2/2))-$(($3/2)) ));;
    "right") echo $(($2 - 2 - $3));; # -2 is for box line
  esac


}

# usage: box <start_y> <width> <height> <string place>
function box {
  local start_y=$1
  local width=$2
  local height=$3
  local place=$4
  local window=( "$(tput lines)" "$(tput cols)")

  local start_x=$(($(explace $place ${window[1]} $width)))

# write top "+------+"
  tput cup $start_y $start_x
  echo -n "+"
  for num in $(seq $width)
  do
    echo -ne "-"
  done
  echo -ne "+\n"

# write mid "|            |"
  for i in $(seq $height)
  do 
    tput cup $(($start_y+$i)) $start_x
    echo -ne "|"
    for num in $(seq $width)
    do
      echo -ne " "
    done                      
    echo -ne "|\n"
  done

# write bottom "+-----------+"
  tput cup $(($start_y + $height +1)) $start_x
  echo -ne "+"
  for num in $(seq $width)
  do
    echo -ne "-"
     
  done
  echo -ne "+\n"
}


case $1 in
  "box") shift; box $@;;
esac
