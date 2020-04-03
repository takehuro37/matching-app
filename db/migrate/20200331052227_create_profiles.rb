class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles, id: :integer do |t|
      t.integer :user_id,        null: false ,foreign_key: true
      t.string :first_name,      null: false
      t.string :last_name,       null: false
      t.string :first_name_kana, null: false
      t.string :last_name_kana,  null: false
      t.integer :birth_year,     null: false
      t.integer :birth_month,    null: false
      t.integer :birth_day,       null: false
      t.string :comment
      t.integer :hobby_id
      t.integer :work_id
      t.timestamps
    end
  end
end
