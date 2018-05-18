#!/usr/local/bin/bash

source funcs.sh
Logo_y=9
Logo_height=7
tput cup $Logo_y 1

echo "先ずは自己紹介からします。" | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p
wait
echo "どうも、シージェードットびーしーえすディーです。学生やってます。バッシュが好きです" | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p
cat << EOT
     _/_/_/  _/      _/                                              _/
  _/                _/_/_/      _/_/_/                _/_/_/    _/_/_/ 
 _/        _/      _/    _/  _/        _/_/_/_/_/  _/_/      _/    _/  
_/        _/      _/    _/  _/                        _/_/  _/    _/   
 _/_/_/  _/  _/  _/_/_/      _/_/_/              _/_/_/      _/_/_/    
        _/                                                             
     _/                                                                
EOT

profile=( \
  "Land: Bash on Tmux" \
  "Job: High school student"   \
  "ED1T0R: V*m"                \
  "Like: cat, music, MR, etc"  \
  ""                           \
  "Github: Cj-bc"              \
  "Twitter: @Cj_bc_sd"         \
  "Instagram: cj.bc_sd"                 \
  "Qiita: @Cj-bc"                    \
  ""                           \
  "And also, my team:"         \
  " y-modify (Twitter:@ymodify314)" \
  )

wait
 i=0
 for ((i=0;i < ${#profile}; i++))
 do
  echo ${profile[$i]} | rwtext $(($TERM_X_LEFT + 5)) $(($Logo_y + $Logo_height + 4 + $i))
  wait
done

tput cup 1 1 
