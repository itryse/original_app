# newRead
概要

## Appname
アプリケーション名
My Goal

## Description
詳細の説明
何かを達成したいと考えた時に、漠然と頭の中でイメージする人がほとんどだと思います。しかし、目標に向かって走り出しても途中で諦めてしまったり、挫折してしまったりするようなことがあると思います。
そんな人たちに向けて、目標を共有して、ともに励まし合いながら目標達成を支援するサイトになっています。

## Usage
用途

## Install
インストール方法



# テーブル設計
-----
# users

| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| nickname           | string    | null : false                    |
| email              | string    | null : false, unique: true      |
| encrypted_password | string    | null : false, default: ""       |
| gender_id          | integer   | null : false                    |
| age_id             | integer   | null : false                    |
| profile            | text      | null : false                    |

# Association
- has_many :posts
- has_many :comments

# posts
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| title              | string    | null : false                    |
| target_time        | integer   | null : false                    |
| genre              | string    | null : false                    |
| user               | reference | null : false ,foreign_key: true |

# Association
- belongs_to :user
- has_many :comments

# comments
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| text               | string    | null : false                    |
| user               | reference | null : false ,foreign_key: true |
| post               | reference | null : false ,foreign_key: true |

# Association
- belongs_to :user
- belongs_to :post
