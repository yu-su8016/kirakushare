# Name
  Kirakushare
# Overview
  An exchange app with a photo posting function
# Description
  Log in and post your favorite photos
  You can post a comment by opening the detail page


# Pictweet DB設計
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

