class ChangeIntegerLimitInProductsTable < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :quantity, :integer, limit: 8
    change_column :products, :price, :integer, limit: 8
  end
end
