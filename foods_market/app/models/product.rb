class Product < ApplicationRecord
  validates :name, :cost, :origin, :presence => true

  has_many :reviews

  scope :most_reviewed, -> {
    select("products.id, products.name, products.cost, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group('products.id')
    .order('reviews_count DESC')
    .limit(1)
  }

  scope :recently_added, -> { order(created_at: :desc).limit(3) }

  scope :domestic, -> { where('origin = ?', 'United States') }

end
