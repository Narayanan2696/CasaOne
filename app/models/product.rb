class Product < ApplicationRecord
	has_many :ratings
	has_many :customers, through: :ratings
	has_many :questions
	
	validates :cost, numericality: true
end