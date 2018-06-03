# == Schema Information
#
# Table name: sub_categories
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  category_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SubCategory < ApplicationRecord
  belongs_to :category
  has_one :meta, as: :metables
  has_many :images, as: :imagable
  has_many :dishes, as: :dishable

  validates :name, presence: true,
                   uniqueness: { case_sensitive: false },
                   length: {maximum: 50}
end
