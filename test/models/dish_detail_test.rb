# == Schema Information
#
# Table name: dish_details
#
#  id            :bigint(8)        not null, primary key
#  dish_id       :bigint(8)
#  ingredient_id :bigint(8)
#  unit          :string           default("шт"), not null
#  amount        :float            default(1.0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class DishDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
