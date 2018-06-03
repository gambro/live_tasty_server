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

class MetaEntity < ApplicationRecord
  belongs_to :entitable, polymorphic: true

  validates :entitable_type, presence: true, uniqueness: true
end
