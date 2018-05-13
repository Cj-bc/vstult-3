#!/usr/local/bin/bash
source funcs.sh
mkfifo p
echo "今日の目次" |tee p | ../54ysh/54ysh.sh & box 10 15 1 center < p

echo "1. 自己紹介" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID - 10)) 14 < p
wait
echo "2. 主なプロジェクト" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID - 10)) 15 < p
wait
echo "3. 各プロジェクトについて" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID - 10)) 16 < p
wait
rm p

echo "今日は上記の内容をやる予定でしたが、時間の都合上3.番は無理そう...なので短くなりますがお付き合いください！" | tee vstult.anno.p | ../54ysh/54ysh.sh
wait

tput cup 1 1
