class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :material

  validates :start_date, presence: true
  validates :end_date, presence: true
  has_one_attached :photo
end
