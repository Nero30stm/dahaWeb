class ChangeOrder < ActiveRecord::Migration[5.2]
  def change
  	add_column :orders, :ship, :integer
  end
end
