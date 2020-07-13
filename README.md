# アプリ名
  Kirakushare

# 概要
  自分で撮った写真をアップして、交流できます。

# 本番環境
  デプロイ先：http://54.150.130.49:3000/
  テストアカウント
    Email：test@gmail.com
    password：kakikukeko

# 製作背景
  ・写真を通して、交流をして欲しい。
  ・写真を見て、ここに行ってみたい！と感じて欲しい。

# DEMO
https://i.gyazo.com/52672043f96e7becd466a726b44791b7.jpg

# kirakushare DB設計
## usesrテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :likes
- has_many :comments
- has_many :scene

## scenesテーブル
|Column|Type|Options|
|———|----|-------|
|area|text|null: false|
|image|string|null: false|
|text|text||
|date|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :likes

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|scene_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :tweet
- belongs_to :user
- has_many :likes

## likeテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|scene_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :comment
- belongs_to :user
- belongs_to :scene

