class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.date :date,         null: false
      t.integer :student,   null: false
      t.integer :volunteer, null: false
      t.integer :visitor,   null: false
      t.text :repo_comment
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
