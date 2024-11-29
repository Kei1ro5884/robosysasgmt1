#!/bin/bash -xv

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

### NORMAL INPUT ###
out=$(echo -e "30\n50" | python3 required_score)
[ "${out}" = "期末試験前までの得点を入力してください (0〜100): 期末試験の成績割合を入力してください (0〜100): 単位取得には期末試験で少なくとも60.00点が必要です。" ] || ng "$LINENO"

# 現在の得点がすでに十分な場合
out=$(echo -e "70\n40" | python3 required_score)
[ "${out}" = "期末試験前までの得点を入力してください (0〜100): 期末試験の成績割合を入力してください (0〜100): おめでとうございます！すでに単位取得が確定しています。" ] || ng "$LINENO"

# 期末試験で満点でも単位取得不可能な場合
out=$(echo -e "10\n20" | python3 required_score)
[ "${out}" = "期末試験前までの得点を入力してください (0〜100): 期末試験の成績割合を入力してください (0〜100): 残念ながら、期末試験で満点を取っても単位取得はできません。" ] || ng "$LINENO"

### STRANGE INPUT ###
# 不正な入力（文字列）
out=$(echo -e "あ" | python3 required_score)
[ "${out}" = "期末試験前までの得点を入力してください (0〜100): 数値を正しく入力してください。" ] || ng "$LINENO"

# 不正な入力（空入力）
out=$(echo -e  | python3 required_score)
[ "${out}" = "期末試験前までの得点を入力してください (0〜100): 数値を正しく入力してください。" ] || ng "$LINENO"

# 結果が全てOKなら
[ "${res}" = 0 ] && echo OK

exit $res
