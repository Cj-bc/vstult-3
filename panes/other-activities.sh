#!/usr/local/bin/bash

source funcs.sh

echo "その他の活動" | box $(($TERM_Y_MID -5)) 15 1 center -t
echo "* homebrew formulaの作成" | text $(($TERM_X_MID -10)) $TERM_Y_MID
echo "* bash補完関数の作成" | text $(($TERM_X_MID -10)) $(($TERM_Y_MID +2))
echo "* ドキュメントの翻訳" | text $(($TERM_X_MID -10)) $(($TERM_Y_MID +4))
