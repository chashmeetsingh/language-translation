# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  belongs_to :article

  validates :name, presence: true

  default_scope -> { order('created_at DESC') }
end
