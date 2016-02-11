class AddDescriptionTolieux < ActiveRecord::Migration
  def change
    add_column :lieus, :description, :string
  end
end
