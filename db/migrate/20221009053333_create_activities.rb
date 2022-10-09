class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.date :date,         null: false
      t.string :attendance, null: false
      t.text :att_comment
      t.text :oth_comment
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
