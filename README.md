# SIMPLE-CAL
![alt text](logo.png)


# 本アプリケーションのURL
https://simple-cal.onrender.com


# 本アプリケーションの概要

## 内容
- カレンダーに「予定・タスク」「日時」「メモ・振り返り」を保存していただけます。
- カレンダーには「予定・タスク」と、それを保存した「ユーザー名の頭文字」が表示されます。
- 予定・タスク管理に最低限の情報だけを保存・確認できるほか、ユーザーに応じて必要な情報や振り返りを保存していただけます。

## 課題解決
- 昨今のデジタル手帳（手帳アプリ）における機能やサービスの発展や充実に比例し、ボタン量や1アクション完了までの操作量の増加による視認性・操作の迅速性に懸念を抱いておりました。
- 日々の予定管理や振り返りを書き留めておく習慣は、煩わしさや面倒さを感じてしまうことで「三日坊主」になってしまうことが課題であると捉え、製作者本人もまた、過去同様の経験をしました。
- 本アプリケーションは、製作者が最低限必要であると認めた情報のみを保存・確認できる簡潔さ・敷居の低さを有し、上記課題の解決に寄与することを期待いたします。

## ターゲット
- 上記のような懸念・課題を感じているデジタル手帳（手帳アプリ）ユーザー
- 紙手帳ユーザー（紙手帳に対するデメリットを補完するサブ手帳として）

## 工夫・こだわり
- 現在の製作者が持ち合わせている知識や技量の範疇で可能な限り、シンプルさと視認性、操作の迅速性を意識して、下記のとおり製作いたしました。
- 配色は白黒のツートンを基調に
- ボタンや文字などは画面スクロールを要しない程度に極力大きく
- 新規保存や確認はページ遷移を要しないようにトップページに配置



# テーブル設計

## Usersテーブル
| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| nickname           | string     | null: false                    |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |

### Association
- has_many :events

## Eventsテーブル
| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| title              | string     | null: false                    |
| start              | datetime   | null: false                    |
| content            | text       |                                |
| user_id            | references | null: false, foreign_key: ture |

### Association
- belongs_to :users