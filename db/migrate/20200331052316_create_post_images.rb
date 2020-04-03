class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images, id: :integer do |t|
      t.integer :post_id, foreign_key: true
      t.string :image
      t.timestamps
    end
  end
end
