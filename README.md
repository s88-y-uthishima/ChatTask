# アプリ名
ChatTask
# 概要
調剤薬局在宅業務用情報共有アプリケーション<br />
リアルタイムチャット機能　＋　タスク共有管理機能　＋　地図表示機能
# 本番環境
https://chattask32038.herokuapp.com/<br />

ログイン情報（テスト用）<br />

- メールアドレス：yamada@test.com<br />
- パスワード：123456

# 制作背景（意図）
調剤薬局勤務の際に在宅医療の業務を行っていました。連絡のやり取りはメールか電話が基本です。<br />
緊急性の高い患者や臨時の配達を行う際には、一方方向の情報伝達や1対1のやり取りでは非効率です。<br />
そこで多人数で情報共有可能なチャット機能を作成ししました。<br />
また、誰がどの程度患者が残っているかひと目で分かるようにタスク管理機能を共有できる機能を作成し、チャット機能と合わせることにしました。
# DEMO

# 工夫したポイント
- タスクのカード情報には患者の住所を入力することで地図を表示できるようにしたことで、自分で調べることなくどこに行けば良いのかがわかるようにしました。
- チャットのユーザー名をクリックすることで、その人がどこにいるかがわかるように現在位置を表示できるようにしました。

# 使用技術(開発環境)

- バックエンド : Ruby, Ruby on Rails
- フロントエンド : HTML, CSS, javascript, jquery, Ajax
- データベース : MySQL, SequellPro
- インフラ : 
- Webサーバー : Heroku
- アプリケーションサーバー : puma
- ソース管理 : GitHub, GitHubDesktop
- テスト
- エディタ : Visual Studio Code

# 課題や今後実装したい機能
- 現在、各店舗ページに遷移後にそのままチャット機能を使用すると正常に機能しない状態にあり、一度リロードを行う必要があります。ページの遷移の際に'room_id'が正常に受け渡しされていないことが原因と思われます。
- 各ルームが誰でも自由に入れる状態のため、鍵付きのルームを作成しパスワードを知っているもののみが入れる機能を実装したいと思います。
# DB設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :messages

## rooms テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| name                | string     | null: false                    |

### Association

- has_many :messages
- has_many :tasks

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :room

## tasks テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- has_many :cards

## cards テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| address | string     | null: false                    |
| memo    | text       |                                |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :task
