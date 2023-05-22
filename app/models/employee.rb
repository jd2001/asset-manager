class Employee < ApplicationRecord
  belongs_to :company
  has_many :accesses, dependent: :destroy

  def full_name
    "#{first_name} #{surname}"
  end
end
