# == Schema Information
#
# Table name: meta
#
#  id            :bigint(8)        not null, primary key
#  title         :string           default(""), not null
#  description   :string           default(""), not null
#  keywords      :text             default(""), not null
#  alias         :string           default(""), not null
#  metables_type :string
#  metables_id   :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class MetumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
