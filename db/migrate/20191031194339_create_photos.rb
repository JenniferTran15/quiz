class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :content_id
      t.integer :user_id
      t.timestamps
    end
    add_index :photos, [:user_id, :content_id]
    add_index :photos, :content_id
  end
end
