class Customer < ApplicationRecord
	has_many :ratings
	has_many :products, through: :ratings
end