class ProductsController < ApplicationController

	# def create
	# 	@product ||= Product.create!(product_params)
	# 	render json: @product, status: :created
	# end

	def index
		render json: products
	end

	def show
		render json: product
	end

	private

		def customer
			@customer ||= Customer.find(params[:customer_id])
		end

		def product
			@product ||= customer.products.find(params[:id])
		end
		
		def products
			@products ||= customer.products
		end

		def product_params
			params.require(:product).permit(:name, :cost)
		end
end