# == Schema Information
#
# Table name: product_details
#
#  id         :integer          not null, primary key
#  product_id :integer
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductDetail < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to  :product
end
