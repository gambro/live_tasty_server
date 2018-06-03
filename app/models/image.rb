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

class Image < ApplicationRecord
  belongs_to :imagable, polymorphic: true
end
