class RatingsController < ApplicationController

	def create
		@rating ||= create_rating()
		render json: @rating
	end

	def index

	end

	def show

	end

	private
		def product
			@product ||= Product.find(params[:product_id])
		end

		def create_rating
			@create_rating ||= product.ratings.create!(rating_params)
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