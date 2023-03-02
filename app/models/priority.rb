class Priority < ApplicationRecord
  has_many :business_assets
  validates :name, presence: true
end
