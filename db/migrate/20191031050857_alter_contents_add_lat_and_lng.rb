class AlterContentsAddLatAndLng < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :latitude, :float
    add_column :contents, :longitude, :float
  end
end
