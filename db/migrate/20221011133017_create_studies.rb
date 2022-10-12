class CreateStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :studies do |t|
      t.date :date,       null: false
      t.string :activity, null: false
      t.string :study
      t.string :manager
      t.string :text
      t.timestamps
    end
  end
end
