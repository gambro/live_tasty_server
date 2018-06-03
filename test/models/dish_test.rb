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

require 'test_helper'

class DishTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
