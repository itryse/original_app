# :soccer:shoot:soccer:
# アプリケーション概要
各々が持っている目標を宣言、共有して目標達成に向けてモチベーションを維持するためのアプリケーションです。

## 制作背景
何か目標を持っていても、周りに同じ目標を持っている人がいないため、なかなか目標達成に向かって継続することができないひといませんか？孤独が故に、目標達成を諦めてしまったり、継続することができず、途中で挫折をしてしまうケースを私自身も数多く経験してきました。
また、人間は誰しもが『２つの人生』を持っていると言われていますが、「頑張る！」と決めても、結局頑張らない道を進んでいる人が世の中には大勢いると言います。そして目標達成のために、仲間の存在は非常に大きな役割を持ちます。「目標を達成した景色を見てまた、次なる目標に向かって進んで欲しい。」そんな思いを込めてアプリケーションを制作しました。

## 工夫した点
見やすいシンプルなビューにすることに拘りました。また、新規投稿ページでは目標のジャンルを設定してみました。トップページでジャンルの検索機能をつけることで、同じジャンルに向かって頑張っている人を簡単に見つける機能も実装しました。その他は詳細ページでは、コメントだけではなく、いいね機能も付与することで簡単に投稿者を応援できる仕組みにしてみました。また、投稿するハードルを極限まで下げるために、実名や誕生日などの固有情報の登録は不要としました。

## 使用言語・技術
Ruby
Ruby on rails
HTML/CSS
MySQL

## Install
インストール方法

## デプロイ後のURL


## テスト用アカウント
ユーザー名：test@gmail.com
パスワード：111111

## 利用方法
1 アクセスするとトップページへ遷移します。
2 ヘッダー右のログインをクリックすると、ログインページへ遷移するので、テスト用アカウントを使用してログインしてください。（問題なくログインができていれば、ヘッダー部分に＊「こんにちは、テストさん。」と表示されます。）
3 トップページの画面を下にスクロールすると投稿された目標が左上から投稿日時順で表示されます。（ログインしていない状態でも投稿を見ることができます。）
4 投稿した写真をクリックすることで詳細ページに遷移します。目標の具体的な内容を見ることができ、いいね！やコメントを残すことができます。また、詳細ページの閲覧数を画面左上に表示させています。トップページに戻る際にはヘッダーのロゴマークをクリックしてください。
5 トップページの投稿一覧の右上に検索ボックスを配置しました。目標ジャンルを選んで検索することで同じジャンルの目標を持っている人の投稿が検索が可能できます。



## 目指した課題解決
このアプリケーションを利用することで、目標に向かって取り組んでいる人を共有することができ、自らも目標達成に向かって継続する可能性を高めることができる。

## 洗い出した要件
同じジャンルに向かって努力している仲間を見つけたい。
TwitterやFacebookなどのSNSでの目標を宣言することもできるが、



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
| ------------------ | --------- | ------------------------------- |
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
| ------------------ | --------- | ------------------------------- |
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
