#!/usr/local/bin/bash

source funcs.sh
Logo_y=9
Logo_height=6
tput cup $Logo_y 1

cat << EOT









EOT

profile=( \
  "Land: Bash on Tmux" \
  "Job: High school student"   \
  "ED1T0R: V*m"                \
  "Like: cat, music, MR, etc"  \
  ""                           \
  "Github: Cj-bc"              \
  "Twitter: @Cj_bc_sd"         \
  "Instagram:"                 \
  "Qiita: "                    \
  ""                           \
  "And also, my team:"         \
  " y-modify (Twitter:@ymodify)" \
  )


 i=0
 for i in $(seq ${#profile})
do
# echo ${profile[$i]}
  echo ${profile[$i]} | ./54ysh/54ysh.sh | text $(($TERM_X_LEFT + 5)) $(($Logo_y + $Logo_height + 4 + $i))
done
