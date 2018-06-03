# == Schema Information
#
# Table name: images
#
#  id            :bigint(8)        not null, primary key
#  title         :string           default(""), not null
#  alt           :string           default(""), not null
#  file          :string
#  imagable_type :string
#  imagable_id   :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
