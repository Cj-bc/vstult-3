#!/usr/local/bin/bash

source funcs.sh

echo "その他の活動" | tee p | ../54ysh/54ysh.sh & box $(($TERM_Y_MID -5)) 15 1 center < p; wait
echo "* homebrew formulaの作成" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID -10)) $TERM_Y_MID < p; wait
echo "* bash補完関数の作成" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID -10)) $(($TERM_Y_MID +2)) < p; wait
echo "* ドキュメントの翻訳" | tee p | ../54ysh/54ysh.sh & text $(($TERM_X_MID -10)) $(($TERM_Y_MID +4)) < p; wait
tput cup 1 1 
