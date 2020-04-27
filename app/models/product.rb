class Product < ApplicationRecord
	has_many :ratings

	validates :cost, numericality: true
end