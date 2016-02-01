class CreateLieus < ActiveRecord::Migration
  def change
    create_table :lieus do |t|
      t.string :name
      t.string :phone
      t.string :url
      t.string :adress

      t.timestamps null: false
    end
  end
end
