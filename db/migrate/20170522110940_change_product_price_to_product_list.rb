class ChangeProductPriceToProductList < ActiveRecord::Migration[5.0]
  def change
    remove_column :product_lists, :product_price, :string
    add_column :product_lists, :product_price, :integer
  end
end
