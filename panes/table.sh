#!/usr/local/bin/bash
source funcs.sh
echo "今日の目次" | ../54ysh/54ysh.sh | box 10 15 1 center -t

echo "1. 自己紹介" | ../54ysh/54ysh.sh | text $(($TERM_X_MID - 10)) 14
echo "2. 主なプロジェクト" | ../54ysh/54ysh.sh | text $(($TERM_X_MID - 10)) 15
echo "3. 各プロジェクトについて" | ../54ysh/54ysh.sh | text $(($TERM_X_MID - 10)) 16