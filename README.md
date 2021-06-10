
=======
# Shoot!:soccer:
# 概要
各々が持っている目標を宣言、共有して達成に向けてモチベーションを維持するためのアプリケーションです。

## 制作背景
何か目標を持っていても、周りに同じ目標を持っている人がいないため、一人で孤独に目標に向かって取り組んでいる人が多いと思います。孤独が故に、目標達成を諦めてしまったり、継続して頑張ることをできず、途中で挫折をしてしまうケースが多いように思います。私自身も意思が弱く、学生時代の勉強や社会人での資格取得の勉強などで何度も挫折を経験してきました。そのような私と同じような状況に陥ってほしくない。頑張れない人たちに対して何か後押しできないかと考えました。人生には２つの道があるとよく言いますが、「頑張りたい！」けど頑張れずに、頑張らない道を進んでいる人が大勢います。ぜひ、「目標を達成した景色を見てまた、次なる目標に向かって進んで欲しい。」そんな思いを込めてアプリケーションを制作しました。

## 工夫した点
見やすいシンプルなビューにすることに拘りました。また、新規投稿ページでは目標のジャンルを設定してみました。トップページで検索機能をつけることで、同じジャンルに向かって頑張っている人を簡単に見つける機能も実装しました。その他は詳細ページでは、コメントだけではなく、いいね機能も付与することで簡単に投稿者を応援できる仕組みにしてみました。また、投稿するハードルを極限まで下げるために、実名や誕生日などの固有情報の登録は不要としました。

## 使用言語・技術
Ruby
Ruby on rails
HTML/CSS
SQL

## Install
インストール方法

## デプロイ後のURL

## テスト用アカウント

ユーザー名：satoshi@gmail.com
パスワード：111111

## 利用方法
1 アクセスするとトップページへ遷移
2 ヘッダー右のログインをクリックすると、ログインページへ遷移するので、テスト用アカウントを使用してログインをする。（問題なくログインができていれば、ヘッダー部分に＊「こんにちは、サトシさん。」と表示されます。）
3 画面をしたにスクロールすると過去に投稿された目標が投稿日時順で表示されています。（ログインしていない状態でも、トップページの投稿は見ることができます。）
4 投稿した写真をクリックすることで、詳細ページに遷移します。目標の具体的な内容を見ることができ、いいね！やコメントを残すことができます。また、詳細ページの閲覧数が画面左上に表示させています。またトップページに戻る際にはヘッダーのロゴをクリックすることでトップページに戻ることが可能です。
5 投稿一覧の右上に検索ボックスを配置しました。目標ジャンルを選んで検索することで自分と同じジャンルの目標を持っている人の検索が可能です。

## テーブル設計

### ユーザー管理機能
・usersテーブル
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| nickname           | string    | null : false                    |
| email              | string    | null : false, unique: true      |
| encrypted_password | string    | null : false, default: ""       |
| gender_id          | integer   | null : false                    |
| age_id             | integer   | null : false                    |
| profile            | text      | null : false                    |

### Association
- has_many :posts
- has_many :comments
- has_many :likes

### 目標投稿機能
・postsテーブル
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| title              | string    | null : false                    |
| target_time        | integer   | null : false                    |
| genre_id           | string    | null : false                    |
| user               | reference | null : false ,foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_many :likes
- imageはActiveStorageにて実装※保存先はS3

### コメント機能
・commentsテーブル
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| text               | string    | null : false                    |
| user               | reference | null : false ,foreign_key: true |
| post               | reference | null : false ,foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post

### いいね！機能
・likesテーブル
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| user               | reference | null : false ,foreign_key: true |
| post               | reference | null : false ,foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post
