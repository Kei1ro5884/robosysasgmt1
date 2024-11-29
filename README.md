# required_scoreコマンド
[![test](https://github.com/Kei1ro5884/robosysasgmt1/actions/workflows/test.yml/badge.svg)](https://github.com/Kei1ro5884/robosysasgmt1/actions/workflows/test.yml)

## 必要なソフトウェア
- Python
  -テスト済みバージョン:3.7~3.11

## テスト環境
- Ubuntu 22.04 LTS

## 概要

-このコマンドは学生向けのもので、期末試験前までの学生の成績から期末試験で何点取れば単位取得(60点以上)できるかを計算します。

-複数の科目で単位取得が不安な学生が、より簡単で正確に計算ができるよう作成しました。

-ユーザーが中間試験やレポートなどを合わせた期末試験前の点数と、全体の成績に期末試験が占める割合を入力することで、何点取れば単位取得できるかを出力します。

-単位取得不可の場合は、NaNが出力され、既に単位取得確定の場合は0.0が出力されます。

## 使用方法

-当リポジトリのclone
```
$ git clone https://github.com/Kei1ro5884/robosysasgmt1.git
```
-ディレクトリに移動
```
$ cd robosysasgmt1
```
-実行権限の付与
```
$ chmod +x required_score
```
-実行
```
$ ./required_score
```
-コマンドを実行する際、以下の形式でスペース区切りで値を入力します
```
<期末試験前までの得点> <期末試験の成績割合>
```

## 実行例

```
$ ./required_score
50 50
20.0

$ ./required_score
30 10
NaN

$ ./required_score
80 30
0.0
```

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- @2024 KEIICHIRO KOBAYASHI
