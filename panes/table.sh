#!/usr/local/bin/bash
source funcs.sh
echo "今日の目次" |tee p | ../54ysh/54ysh.sh & box 10 15 1 center < p

echo "1. 自己紹介" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID - 10)) 14 < p
wait
echo "2. 主なプロジェクト" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID - 10)) 15 < p
wait
echo "3. 各プロジェクトについて" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID - 10)) 16 < p
wait

tput cup 1 1
