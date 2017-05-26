# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_icon :string
#

class Category < ApplicationRecord
  has_many :products
  mount_uploader :category_icon, ImageUploader

end
