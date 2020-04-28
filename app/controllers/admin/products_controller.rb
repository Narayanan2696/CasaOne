class Admin::ProductsController < ApplicationController

	def create
		@product ||= Product.create!(product_params)
		render json: @product, status: :created
	end

	def index
		render json: products
	end

	def show
		render json: product
	end

	private
		def product
			@product ||= Product.find(params[:id])
		end

		def products
			@products ||= Product.all
		end

		def product_params
			params.require(:product).permit(:name, :cost)
		end
end