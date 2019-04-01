class ChangeTab < ActiveRecord::Migration[5.2]
  def change
  	change_column :orders, :stoim, :decimal, :default => 0
  	add_column :products, :cost, :decimal
  	add_column :magazines, :latitude, :decimal
  	add_column :magazines, :longitude, :decimal
  end
end
