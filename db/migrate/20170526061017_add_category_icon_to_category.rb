class AddCategoryIconToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :category_icon, :string
  end
end
