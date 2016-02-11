class AddLatlonTolieux < ActiveRecord::Migration
  def change
    add_column :lieus, :latitude, :float
    add_column :lieus, :longitude, :float
  end
end
