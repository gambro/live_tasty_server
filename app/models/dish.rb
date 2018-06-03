# == Schema Information
#
# Table name: dishes
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  description   :text
#  country_id    :bigint(8)
#  dishable_type :string
#  dishable_id   :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Dish < ApplicationRecord
  belongs_to :dishable, polymorphic: true
  belongs_to :country
  has_many :dish_details, dependent: :destroy
  has_many :ingredients, through: :dish_details, dependent: :destroy
  has_and_belongs_to_many :labels, -> { distinct }
  has_many :images, as: :imagable
  has_one :meta_entity, as: :entitable

  validates :name, presence: true,
                   uniqueness: { case_sensitive: false },
                   length: {maximum: 50}
  validates :country, :description, presence: true
end
