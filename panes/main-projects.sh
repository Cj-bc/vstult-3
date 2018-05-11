#!/usr/local/bin/bash

source funcs.sh

echo "Project list" | box 3 15 1 center -t
cat <<EOT | box 8 50 3 center -t

* mcUI
  -
 マイクラでUIを作ってしまおうというプロジェクト
EOT

cat <<EOT | box 15 50 3 center -t

* Tkinsh
  -
 Tcl/TkやTkinterのshell版を作る
EOT

cat <<EOT | box 22 40 3 center -t

* blib
  -
 bash用パッケージマネージャー
EOT

cat <<EOT | box 29 40 3 center -t

* pixing
  -
 Bashでもドット絵が描きたい！
EOT

cat <<EOT | box 29 55 4 center -t

* 54ysh
  shell-like speaking tool for mac
  この読み上げに使われているもの。
  何故かエラーで存在感出されまくったので乗っけておく
EOT
