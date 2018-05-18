#!/usr/local/bin/bash
source funcs.sh
echo "今日の目次" | rwbox 10 15 1 center
wait

echo "1. 自己紹介" | rwtext $(($TERM_X_MID - 10)) 14
wait
echo "2. 主なプロジェクト" | rwtext $(($TERM_X_MID - 10)) 15
wait
echo "3. 各プロジェクトについて" | rwtext $(($TERM_X_MID - 10)) 16
wait

tput cup 1 1
