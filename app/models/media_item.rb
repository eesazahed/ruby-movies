class MediaItem < ApplicationRecord
    validates :category, presence: true, inclusion: { in: %w[movie series] }
    validates :release_year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1800, less_than_or_equal_to: Date.current.year }
    validates :title, presence: true
    validates :description, presence: true
    validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
    validates :watchlist, presence: true, inclusion: { in: %w[watched watching watchlist] }
  end
  