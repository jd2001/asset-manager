class BusinessAsset < ApplicationRecord
  belongs_to :host_type
  belongs_to :info_type
  belongs_to :priority
  has_many :accesses

  validates :asset_code, presence: true
  validates :name, presence: true
end
