class Review < ApplicationRecord
  validates :author, :content, :rating, :presence => true
  validates :rating, :numericality => { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :content, :length => { minimum: 50, too_short: 'must be at least 50 characters', maximum: 250, too_long: 'must be less than or equal to 250 characters' }

  belongs_to :product
end
