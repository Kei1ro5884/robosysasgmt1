#!/bin/bash -xv

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

### NORMAL INPUT ###
# 必要得点を計算
out=$(echo "30 50" | python3 finalexam_required_score)
[ "${out}" = "60.0" ] || ng "$LINENO"

# 現在の得点がすでに十分な場合
out=$(echo "70 40" | python3 finalexam_required_score)
[ "${out}" = "0.0" ] || ng "$LINENO"

# 期末試験で満点でも単位取得不可能な場合
out=$(echo "10 20" | python3 finalexam_required_score)
[ "${out}" = "NaN" ] || ng "$LINENO"

### STRANGE INPUT ###
# 不正な入力（文字列）
out=$(echo "あ" | python3 finalexam_required_score)
[ "${out}" = "" ] || ng "$LINENO"

# 不正な入力（片方のみ入力）
out=$(echo "50" | python3 finalexam_required_score)
[ "${out}" = "" ] || ng "$LINENO"

# 不正な入力（空入力）
out=$(echo "" | python3 finalexam_required_score)
[ "${out}" = "" ] || ng "$LINENO"

# 入力値が範囲外
out=$(echo "110 50" | python3 finalexam_required_score)
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo "50 0" | python3 finalexam_required_score)
[ "${out}" = "" ] || ng "$LINENO"

# 結果が全てOKなら
[ "${res}" = 0 ] && echo OK

exit $res

