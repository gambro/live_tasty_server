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

require 'test_helper'

class SubCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
