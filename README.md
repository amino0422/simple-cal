# テーブル設計

## Usersテーブル
| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| nickname           | string     | null: false                    |
| email              | string     | null: false, unique: true      |
| password           | string     | null: false                    |

### Association
- has_many :events


## Eventsテーブル
| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| title              | string     | null: false                    |
| start              | integer    | null: false                    |
| content            | text       |                                |
| user_id            | references | null: false, foreign_key: ture |

### Association
- belongs_to :users

