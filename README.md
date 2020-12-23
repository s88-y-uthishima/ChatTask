# アプリ名
ChatTask
# 概要
リアルタイムチャット機能　＋　タスク共有管理機能
# 本番環境
# 制作背景（意図）

# DEMO
# 工夫したポイント
# 使用技術(開発環境)
# 課題や今後実装したい機能
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

has_many :messages
has_many :tasks

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

belongs_to :user
belongs_to :room

## tasks テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| room   | references | null: false, foreign_key: true |

### Association

belongs_to :room
has_many :cards

## cards テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| address | string     | null: false                    |
| memo    | text       |                                |
| room    | references | null: false, foreign_key: true |

### Association

belongs_to :task
