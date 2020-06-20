# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|column|type|option|
|------|----|------|
|username|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :groups
- has_many :chats
- has_many :groups_users

## group
|column|type|option|
|------|----|------|
|groupname|string|null: false|
|groups_users_id|integer|null: false, foreign_key: true|
### Association
- has_many :groupsusers
- has_many :chats

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## chat
|column|type|option|
|------|----|------|
|message|text|null: false|
|image|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

