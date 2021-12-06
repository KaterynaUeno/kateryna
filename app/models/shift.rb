class Shift < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :start, presence: true
  validates :finish, presence: true
end
