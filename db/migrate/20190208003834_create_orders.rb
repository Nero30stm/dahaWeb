class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
 		t.string :name, null:false
 		t.integer :count, null:false
 		t.decimal :stoim, null:false
 		t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
