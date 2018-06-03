# == Schema Information
#
# Table name: countries
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Country < ApplicationRecord
  has_many :dishes, dependent: :destroy
  has_many :images, as: :imagable
  has_one :meta_entity, as: :entitable

  validates :name, presence: true,
                   uniqueness: { case_sensitive: false },
                   length: {maximum: 50}
end
