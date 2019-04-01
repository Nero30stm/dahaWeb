class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
	  t.string :name, null:false
      t.text :descr, null:false
      t.string :mainPhoto, null:false
      t.timestamps
    end
  end
end
