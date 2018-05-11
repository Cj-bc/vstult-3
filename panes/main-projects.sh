#!/usr/local/bin/bash

source funcs.sh
mkfifo mcUI
echo "Project list" | box 3 15 1 center 
cat <<EOT | tee mcUI | ./54ysh/54ysh.sh & box 8 50 3 center < mcUI
mcUI
This is Minecraft based 3D UI project!!!
マイクラでUIを作ってしまおうというプロジェクト
EOT
rm mcUI
wait
mkfifo contents2
cat <<EOT | tee contents2 | ./54ysh/54ysh.sh & box 15 50 3 center < contents2
 Tkinsh
 This is a shellscript library to manage UI in CLI 
 Tcl/TkやTkinterのshell版を作る
EOT
rm contents2

wait
mkfifo contents3
cat <<EOT | tee contents3 | ./54ysh/54ysh.sh & box 22 40 3 center < contents3
 blib
 an library manager for bash 
 bash用ライブラリマネージャー
EOT
rm contents3

wait
mkfifo contents4
cat <<EOT | tee contents4 | ./54ysh/54ysh.sh & box 29 40 3 center < contents4
 pixing
 no need Gimp, if you're basher 
 Bashでもドット絵が描きたい！
EOT
rm contents4

wait
mkfifo contents5
cat <<EOT | tee contents5 | ./54ysh/54ysh.sh & box 36 55 4 center < contents5
 54ysh
 shell-like speaking tool for mac
 この読み上げに使われているもの。
 何故かエラーで存在感出されまくったので乗っけておく
EOT
rm contents5
