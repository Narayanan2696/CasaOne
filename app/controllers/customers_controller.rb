class CustomersController < ApplicationController

	def create
		@customer ||= Customer.create!(product_params)
		render json: @customer, status: :created
	end

	def index
		render json: customers
	end

	def show
		render json: customer
	end

	private
	
		def customer
			@customer ||= Customer.find(params[:id])
		end
		
		def customers
			@customers ||= Customer.all
		end

		def product_params
			params.require(:customer).permit(:name)
		end
end