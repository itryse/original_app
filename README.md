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
- has_many :likes

# posts
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| title              | string    | null : false                    |
| target_time        | string    | null : false                    |
| genre_id           | integer   | null : false                    |
| user               | reference | null : false ,foreign_key: true |

# Association
- belongs_to :user
- has_many :comments
- has_many :likes

# comments
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| text               | string    | null : false                    |
| user               | reference | null : false ,foreign_key: true |
| post               | reference | null : false ,foreign_key: true |

# Association
- belongs_to :user
- belongs_to :post

# likes
| Column             | Type      | Options                         |
| ------------------ | --------- | ------------------------------- |
| user               | reference | null : false ,foreign_key: true |
| post               | reference | null : false ,foreign_key: true |

# Association
- belongs_to :user
- belongs_to :post