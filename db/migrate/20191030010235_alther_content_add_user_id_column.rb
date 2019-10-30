class AltherContentAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :user_id, :integer
    add_index :contents, :user_id
  end
end
