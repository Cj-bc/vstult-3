#/usr/local/bin/bash

TERM_X_LEFT=2
TERM_X_MID=$(($(tput cols) / 2))
TERM_X_RIGIT=$(($(tput cols) - 2))
TERM_Y_TOP=1
TERM_Y_MID=$(($(tput lines) /2))
TERM_Y_BOTTOM=$(tput lines)

# calculate x coordinate from string to the real number
# @param <place_parameter> <window width> <text＿length>
# @return 0 success
# @return 1 position name is not defined
function explace {
  case "$1" in
    "left") echo 2;;
    "center") echo $(($(($2/2))-$(($3/2)) ));;
    "right") echo $(($2 - 2 - $3));; # -2 is for box line
    * ) echo "error"; return 1;;
  esac
}

# echo string letter by letter
# @param <string text>
# @return 0 success
function echoletter {
  local string=$1
  local tmp=$(mktemp /tmp/vstult-3.tmp.XXXXXX)
  echo "$string" > $tmp
  while IFS= read -rN1 char;
  do
    printf "$char"
    sleep 0.1
  done < $tmp
 rm $tmp
}

# draw a box from specified position & size. can contains texts
# @param <int start_y> <int width> <int height> <string place>
# @stdin string text which will be written in the box
# @return 0 success
function box {
  local start_y=$1
  local width=$2
  local height=$3
  local place=$4
  local window=( "$(tput lines)" "$(tput cols)")
  local text=()
  if [ -p /dev/stdin ]
  then
    while read line
    do
      text=("${text[@]}" "$line")
    done
  fi
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
  local EoL=$(($start_x + $width + 1))
  for i in $(seq $height)
  do 
    tput cup $(($start_y+$i)) $start_x
    echoletter "| ${text[$(($i-1))]}"
    tput cup $(($start_y + $i)) $EoL
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


# write text from specified position letter by letter
# @param stdin <int start_x|string place> <int start_y>
# @stdin string text-to-display
# @return 0 success
function text {
  string=$(cat -)
  place=$1
  start_y=$2
  case $place in
    "left" | "center" | "right" ) start_x=$(explace $place $(tput cols) ${#string});;
    [1-9] | [1-9][0-9] | [1-9][0-9][0-9] ) start_x=$place;;
  esac

  tput cup $start_y $start_x
  echoletter "$string"

  return 0
}

# an wrapper of 'text'.this can speak up the text using 54ysh
# @param stdin <int start_x|string place> <int start_y>
# @stdin string text to speak up and write down
# @return 0 success
function rwtext {
  local string="$(cat -)"

  mkfifo rwtext.p
  echo "$string" | tee rwtext.p | ./54ysh/54ysh.sh & text $1 $2 < rwtext.p
  rm rwtext.p

  return 0
}


# an wrapper of 'text'.this can speak up the text using 54ysh
# @param <int start_y> <int width> <int height> <string place>
# @stdin string text to speak up and write down
# @return 0 success
function rwbox {
  local string=$(cat -)

  mkfifo rwbox.p
  echo "$string" | tee rwbox.p | ./54ysh/54ysh.sh & box $1 $2 $3 $4 < rwbox.p
  rm rwbox.p

  return 0
}


# for command-line use
case $1 in
  "box") shift; box $@;;
  "text") shift;text $@;;
esac
