#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Keiichiro Kobayashi
# SPDX-License-Identifier: BSD-3-Clause
def main():
    try:
        # ユーザー入力
        current_score = float(input("期末試験前までの得点を入力してください (0〜100): "))
        finalexam_rate = float(input("期末試験の成績割合を入力してください (0〜100): "))

        # 入力チェック
        if not (0 <= current_score <= 100):
            print("現在の得点は0〜100の範囲で入力してください。")
            return
        if not (0 < finalexam_rate <= 100):
            print("期末試験の成績割合は0〜100の範囲で入力してください。")
            return

        # 計算
        required_score = (60 - current_score) / (finalexam_rate / 100)

        # 結果出力
        if required_score > 100:
            print("残念ながら、期末試験で満点を取っても単位取得はできません。")
        elif required_score < 0:
            print("おめでとうございます！すでに単位取得が確定しています。")
        else:
            print("単位取得には期末試験で少なくとも{:.2f}点が必要です。".format(required_score))

    except ValueError:
        print("数値を正しく入力してください。")

if __name__ == "__main__":
    main()
