class ChangeProd < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :count, :integer
  end
end
