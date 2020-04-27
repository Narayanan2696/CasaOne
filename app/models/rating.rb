class Rating < ApplicationRecord
	belongs_to :product

	validates :rate, numericality: { greater_than_or_equal_to: 1 }
	validates :rate, numericality: { less_than_or_equal_to: 5}
end