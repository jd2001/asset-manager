class BusinessAsset < ApplicationRecord
  belongs_to :host_type
  belongs_to :info_type
  belongs_to :priority
  has_many :accesses
  # has_many :employees, through: :accesses

  COST_TYPES = [['Monthly', 'monthly'], ['Yearly', 'yearly']]

  validates :asset_code, presence: true
  validates :name, presence: true
end
