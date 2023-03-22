class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :validatable

  validates :name, presence: true
  validates :email, presence: true

  def admin?
    role == 'admin'
  end
end
