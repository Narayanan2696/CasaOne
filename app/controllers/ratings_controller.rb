class RatingsController < ApplicationController

	def create
		render json: create_rating
	end

	def manual_rating
		render json: product.ratings.create!(rating_params)
	end

	def index
		render json: ratings
	end

	def show

	end

	private

		def product
			@product ||= Product.find(params[:product_id])
		end

		def create_rating
			stars = product.questions.map{|question| question.answers.find_by_customer_id(params[:customer_id]).rating}
			Rating.create!(customer_id: params[:customer_id], product_id: params[:product_id], rate: (stars.sum/stars.count).round(2))
		end

		def ratings
			@ratings ||= product.ratings
		end

		def rating 
			@rating ||= product.ratings.find(params[:id])
		end

		def rating_params
			params.require(:rating).permit(:rate)
		end
end