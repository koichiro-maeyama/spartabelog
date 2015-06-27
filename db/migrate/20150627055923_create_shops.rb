class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shopname
      t.string :telno
      t.string :address
      t.string :url

      t.timestamps null: false
    end
  end
end
