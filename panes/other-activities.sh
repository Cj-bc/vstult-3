#!/usr/local/bin/bash

source funcs.sh

echo "その他の活動" | rwbox $(($TERM_Y_MID -5)) 15 1 center; wait
echo "* homebrew formulaの作成" | rwtext $(($TERM_X_MID -10)) $TERM_Y_MID; wait
echo "* bash補完関数の作成" | rwtext $(($TERM_X_MID -10)) $(($TERM_Y_MID +2)); wait
echo "* ドキュメントの翻訳" | rwtext $(($TERM_X_MID -10)) $(($TERM_Y_MID +4)); wait
tput cup 1 1
