class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
	  t.string :name, null:false
      t.text :descr, null:false
      t.string :mainPhoto, null:false
      t.references :type, foreign_key: true
      t.references :mark, foreign_key: true
      t.timestamps
    end
  end
end
