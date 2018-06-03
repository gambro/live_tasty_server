# == Schema Information
#
# Table name: meta_entities
#
#  id             :bigint(8)        not null, primary key
#  title          :string
#  description    :string
#  keywords       :text
#  alias          :string
#  entitable_type :string
#  entitable_id   :bigint(8)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class MetaEntityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
