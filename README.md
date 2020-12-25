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
### トップページ
![rooms_index](https://user-images.githubusercontent.com/73882646/103120786-90ad3b00-46bc-11eb-95a8-14e56a6e7aa0.jpg)
- 各店舗ごとにルーム分けしています。
- ヘッダーのアプリ名をクリックすることでこのページに移動します。ヘッダーの左側にログイン者の名前、右側がサインアウトのリンクになっています。
### ユーザー新規登録画面、サインイン画面
![sign_in](https://user-images.githubusercontent.com/73882646/103120789-9276fe80-46bc-11eb-9c98-72a6c1bbb49f.png)
![log_in](https://user-images.githubusercontent.com/73882646/103120784-8f7c0e00-46bc-11eb-9f3e-50a86e974c58.png)
- Deviseを使用したシンプルなものとなっています。
- ログインしていない場合にはヘッダーは表示されず、自動でサインイン画面に移動するようになっています。
### ルーム新規作成画面
![rooms_new](https://user-images.githubusercontent.com/73882646/103121942-b983ff00-46c1-11eb-86e9-fef99f79f795.jpg)
- トップページの新規ROOM作成をクリックすることで移動してきます。
- ルーム名を入力し、保存するをクリックすることで作成したルームに移動します。
### 各ルーム画面
![rooms_show](https://user-images.githubusercontent.com/73882646/103120788-91de6800-46bc-11eb-9b30-2ca9660ee0f2.jpg)
- このアプリのメインとなるページです。
- ページの左側がチャット用のスペースになっており、フッター部分の入力欄に入力後EnterKeyを押すことでリアルタイム通信でチャットスペースに表示されます。
- ページの右側はタスク管理用のスペースです。タスクの作成・編集・削除、患者カード作成・詳細表示を行うことができます。また、このタスク管理はルームで共有となっておりルーム内のメンバーであれば誰でも編集が可能となっています。削除に関しては各タスクのゴミ箱マークをクリックすることで可能で、その際に確認ダイアログが表示されます。
### タスク新規作成画面 
![tasks_new](https://user-images.githubusercontent.com/73882646/103120791-93a82b80-46bc-11eb-801d-02f71e458fa1.jpg)
- 各ルーム画面の新しいタスクを作成をクリックすることで移動してきます。
- タスク名を入力し、作成をクリックすることでタスク作成し、元のルームに移動します。
### タスク編集画面
![tasks_edit](https://user-images.githubusercontent.com/73882646/103120790-930f9500-46bc-11eb-8e83-3cc3ee3cff68.png)
- 各タスクのメモマークをクリックすることで移動してきます。タスク名を変更することができます。完了後はルーム画面へ戻ります。
### 患者カード登録画面
![cards_new](https://user-images.githubusercontent.com/73882646/103120780-8d19b400-46bc-11eb-8356-4c8d5f4cd855.png)
- 各ルーム画面のカードを追加を作成をクリックすることで移動してきます。
- 必要な情報を入力し、作成をクリックすることで患者カードを作成し、元のルームに移動します。
### 患者カード詳細画面
![cards_show1](https://user-images.githubusercontent.com/73882646/103120781-8ee37780-46bc-11eb-9d34-01f9d873b482.jpg)
![cards_show2](https://user-images.githubusercontent.com/73882646/103123953-5dbd7400-46c9-11eb-8fd8-79d9772ac9f1.png)
- 患者カードをクリックすることで各カードの詳細表示画面へ移動します。
- 登録画面で入力した住所の情報から地図を表示するようになっています。
- ページ下部には患者カード編集、削除用のボタンがあります。
### 患者カード編集画面
![cards_edit](https://user-images.githubusercontent.com/73882646/103120776-87bc6980-46bc-11eb-9b0a-2e8fa3babf71.png)
- 患者カードの編集画面です。情報を変更後、更新するを押すことでルーム画面へ移動します。
### 画面遷移図
<img width="788" alt="diagram" src="https://user-images.githubusercontent.com/73882646/103133537-64aaad80-46ee-11eb-98cc-f5382a848239.png">


# 工夫したポイント
- タスクのカード情報には患者の住所を入力することで地図を表示できるようにしたことで、自分で調べることなくどこに行けば良いのかがわかるようにしました。

# 使用技術(開発環境)

- バックエンド : Ruby, Ruby on Rails
- フロントエンド : HTML, CSS, javascript, jquery
- データベース : MySQL, SequellPro
- インフラ : 
- Webサーバー : Heroku
- アプリケーションサーバー : puma
- ソース管理 : GitHub, GitHubDesktop
- テスト : 
- エディタ : Visual Studio Code

# 課題や今後実装したい機能
- 現在、各店舗ページに移動後にそのままチャット機能を使用すると正常に機能しない状態にあり、一度リロードを行う必要があります。ページ移動の際に'room_id'が正常に受け渡しされていないことが原因と思われます。
- 各ルームが誰でも自由に入れる状態のため、鍵付きのルームを作成しパスワードを知っているもののみが入れる機能を実装したいと思います。
- チャットのユーザー名をクリックすることで、その人がどこにいるかがわかるように現在位置を表示できる機能を実装したいと思います。
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
