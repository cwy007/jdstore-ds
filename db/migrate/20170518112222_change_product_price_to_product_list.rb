class ChangeProductPriceToProductList < ActiveRecord::Migration[5.0]
  def change
    change_column :product_lists, :product_price, :intreger
  end
end
