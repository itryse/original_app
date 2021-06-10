# アプリ名
導かれし者たち

# 概要
各々が持っている目標を宣言、共有しお互いに励まし合いながら目標達成に向けてモチベーションを高めてくれるアプリケーションです。

## 制作背景
何か目標を持っていても、周りに同じ目標を持っている人がおらず、一人で孤独に取り組んでいる人が多いと思います。孤独が故に、継続して頑張ることをできず、周りの誘惑に負けてしまい、途中で挫折をして現状維持のまま夢を叶えることができずに暮らしをしている人に、何か後押しをしたいと考えました。人生には２つの道があるとよく言いますが、「頑張りたい！」けど頑張れずに、頑張らない道を進んでいる人が大勢いると思います。実際、私自身もそうでした。そのような人たちに対して、目標達成を支援試合ながら、モチベーションを保ち続けることに焦点をおけるアプリケーションを作成しました。

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
