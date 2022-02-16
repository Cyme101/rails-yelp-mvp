class Restaurant < ApplicationRecord
  # @['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
