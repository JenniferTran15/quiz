class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :message
      t.string :rating
      t.integer :user_id
      t.integer :content_id
      t.timestamps
    end

    add_index :comments, [:user_id, :content_id]
    add_index :comments, :content_id
  end
end
