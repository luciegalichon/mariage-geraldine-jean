class AddNameToCovoiturages < ActiveRecord::Migration
  def change
    add_column :covoiturages, :name, :string
    add_column :covoiturages, :datea, :string
    add_column :covoiturages, :dater, :string
    add_column :covoiturages, :lieudep, :string
    add_column :covoiturages, :nbplace, :integer
  end
end
