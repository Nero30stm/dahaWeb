class Ship < ActiveRecord::Migration[5.2]
  def change
  	remove_column :orders, :ship, :integer
add_column :orders, :ship, :integer, :default => 1
  end
end
