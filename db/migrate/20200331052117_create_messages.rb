class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages, id: :integer do |t|
      t.string :message, null: false
      t.string :image, null: false
      t.integer :post_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
