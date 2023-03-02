class HostType < ApplicationRecord
  has_many :business_assets
  validates :name, presence: true
end
