# required_scoreコマンド
[![test](https://github.com/Kei1ro5884/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/Kei1ro5884/robosys2024/actions/workflows/test.yml)

## 必要なソフトウェア
- Python
  -テスト済みバージョン:3.7~3.11

## テスト環境
- Ubuntu 22.04 LTS

## 概要

-このコマンドは学生向けのもので、期末試験前までの学生の成績から期末試験で何点取れば単位取得(60点以上)できるかを計算します。

-複数の科目で単位取得が不安な学生が、より簡単で正確に計算ができるよう作成しました。

-ユーザーが中間試験やレポートなどを合わせた期末試験前の点数と、全体の成績に期末試験が占める割合を入力することで、何点取れば単位取得できるかを出力します。

## 使用方法

当リポジトリのclone
```
$ git clone https://github.com/Kei1ro5884/robosysasgmt1.git
```
ディレクトリに移動
```
$ cd robosysasgmt1
```
実行権限の付与
```
$ chmod +x required_score
```

## 実行例

実行
```
$ ./required_score
```
実行例
```
$ ./required_score
期末試験前までの得点を入力してください (0〜100): 20
期末試験の成績割合を入力してください (0〜100): 60
単位取得には期末試験で少なくとも66.67点が必要です。
$./required_score
期末試験前までの得点を入力してください (0〜100): 70
期末試験の成績割合を入力してください (0〜100): 40
おめでとうございます！すでに単位取得が確定しています。
$ ./required_score
期末試験前までの得点を入力してください (0〜100): 10
期末試験の成績割合を入力してください (0〜100): 30
残念ながら、期末試験で満点を取っても単位取得はできません。
```
## ライセンス
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

## クレジット

このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
     [ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/slides_marp.git)
© 2024 Keiichiro Kobayashi
