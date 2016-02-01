class CreateCovoiturages < ActiveRecord::Migration
  def change
    create_table :covoiturages do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
