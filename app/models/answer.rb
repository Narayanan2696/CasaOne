class Answer < ApplicationRecord
	belongs_to :product
	belongs_to :question
	belongs_to :customer
end