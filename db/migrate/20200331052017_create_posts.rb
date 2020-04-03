class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts, id: :integer do |t|
      t.string :title, null: false
      t.string :text, null: false
      t.integer :hobby_id
      t.integer :work_id
      t.timestamps
    end
  end
end
