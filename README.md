# テーブル設計

## users テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| name         | string     | null: false |
| email        | string     | null: false |
| birth_date   | date       | null: false |
| password     | string     | null: false |

### Association

- has_many :attendances
- has_many :reports

## attendances テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| date         | date       | null: false                    |
| attendance   | string     | null: false                    |
| att_comment  | text       |                                |
| oth_comment  | text       |                                |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## repots テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| date         | date       | null: false                    |
| student      | integer    | null: false                    |
| volunteer    | integer    | null: false                    |
| visitor      | integer    | null: false                    |
| repo_comment | text       | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user