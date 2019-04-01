class Reviews < ActiveRecord::Migration[5.2]
  def change
  	remove_column :reviews, :products_id, :integer
add_column :reviews, :product_id, :integer, null:false
  end
end
