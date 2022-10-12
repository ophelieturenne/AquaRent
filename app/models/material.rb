class Material < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  has_one_attached :photo
end
