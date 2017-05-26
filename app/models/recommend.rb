# == Schema Information
#
# Table name: recommends
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  image       :string
#  link        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Recommend < ApplicationRecord
  mount_uploader :image, ImageUploader
end
