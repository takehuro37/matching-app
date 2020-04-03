class CreateProfileImages < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_images, id: :integer do |t|
      t.integer :profile_id, foreign_key: true
      t.string :image
      t.timestamps
    end
  end
end
