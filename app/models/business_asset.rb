class BusinessAsset < ApplicationRecord
  belongs_to :host_type
  belongs_to :info_type
  belongs_to :priority
  has_many :accesses
  # has_many :employees, through: :accesses

  COST_TYPES = [['Monthly', 'monthly'], ['Yearly', 'yearly']]

  validates :asset_code, presence: true
  validates :name, presence: true

  scope :filter_by_name, -> (name) { where('business_assets.name ILIKE :name', name: name) }
  scope :filter_by_host_type, -> (host_type_id) { where(host_type_id: host_type_id) }
  scope :filter_by_info_type, -> (info_type_id) { where(info_type_id: info_type_id) }
  scope :filter_by_priority, -> (priority_id) { where(priority_id: priority_id) }
end
