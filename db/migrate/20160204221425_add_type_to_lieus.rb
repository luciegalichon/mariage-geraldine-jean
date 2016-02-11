class AddTypeTolieux < ActiveRecord::Migration
  def change
    add_column :lieus, :genre, :string
    add_column :lieus, :city, :string
  end
end
