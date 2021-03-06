# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  quantity    :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#  category_id :integer
#

class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos

  has_many :comments

  belongs_to :category, :optional => true

  has_many :product_details, dependent: :destroy
  accepts_nested_attributes_for :product_details

  has_many :cart_items, dependent: :destroy            #当商品删除时，同时删除对应购物车格子里的记录 cart_item
  has_many :carts, through: :cart_items, source: :cart

end
