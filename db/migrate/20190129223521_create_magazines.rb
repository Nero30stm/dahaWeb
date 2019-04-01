class CreateMagazines < ActiveRecord::Migration[5.2]
  def change
  	drop_table :magazines
  	create_table :magazines do |t|
      t.string :name, null:false
      t.text :descr, null:false
      t.string :mainPhoto, null:false
      t.string :addr, null:false
      t.timestamps
    end
  end
end
