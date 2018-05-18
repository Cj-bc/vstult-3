#!/usr/local/bin/bash

echo "メインで開発している個人プロジェクトの一例です。但し、ほぼまだ構想段階のものもあります。" | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p
wait

source funcs.sh
echo "Project list" | box 3 15 1 center
cat <<EOT | rwbox 8 50 3 center
mcUI
This is Minecraft based 3D UI project!!!
マイクラでUIを作ってしまおうというプロジェクト
EOT

echo "マインクラフトから3Dな世界観でバッシュが使えるようにします。ジーユーアイを通りこして3次元の操作感を提供します。尚、これをOSにしてしまおうというえむシーーおーーエスなるプロジェクトも存在しますが先の話です..." | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p
wait
cat <<EOT | rwbox 15 50 3 center
 Tkinsh
 This is a shellscript library to manage UI in CLI 
 Tcl/TkやTkinterのshell版を作る
EOT

echo "シーエルあいツールのユーアイ作成を助けるライブラリです。シーエルあい環境においても簡単にボタンやテキストフィールドなどが扱えるようにします。" | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p
wait
cat <<EOT | rwbox 22 40 3 center
 blib
 an library manager for bash 
 bash用ライブラリマネージャー
EOT


echo "パッケージマネージャーではなく、ライブラリマネージャーです。上記のTkinshやそのほかライブラリをより楽に、取り込めたり管理したりできるようにします。具体的には、ジェムのようにライブラリの管理、インポート文などで読み込むことができるようにします。" | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p
wait
cat <<EOT | rwbox 29 40 3 center
 pixing
 no need Gimp, if you're basher
 Bashでもドット絵が描きたい！
EOT

echo ".png形式のファイルの作成、編集ができるようになる（予定）です。.png形式をバイナリで描いてみたくなったことがあり、その延長で思いつきました。エディタ画面が終了した時、.png形式のバイナリデータを生成アンド保存します。" | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p
wait
cat <<EOT | rwbox 36 55 4 center
 54ysh
 shell-like speaking tool for mac
 この読み上げに使われているもの。
 何故かエラーで存在感出されまくったので乗っけておく
EOT
wait
echo "このスクリプトを書くために昔のを引っ張って来ました。英語＆日本語を半自動的に判断して発音してくれます。マックしか対応していませんでしたが、コードいーが出してくれたプルリクを取り入れると他のOSでも動くようになる予定です。" | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p

wait

echo "他にも色々と思いついたものをレポジトリ化しているのでよろしければギットハブもみてください。正直自分一人だと全然作り終わらない気がするので、興味があるかたがいらっしゃいましたら、プルリクなりなんなり喜んで受けますので声かけてください！一緒に開発しましょう。" | tee vstult.anno.p | ./54ysh/54ysh.sh < vstult.anno.p
wait
tput cup 1 1
