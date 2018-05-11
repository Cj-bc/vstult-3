#!/usr/local/bin/bash

source funcs.sh

echo "Shellscsipt勢が少ない気がするから" | text center $(($TERM_Y_MID - 3))
echo "自己紹介でもしようと思う" | text center $(($TERM_Y_MID - 2))
echo "Cj.bc-sd" | text center $(($TERM_Y_MID + 2))

echo "(宣伝含)" | text right $TERM_Y_BOTTOM