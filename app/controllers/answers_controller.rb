class AnswersController < ApplicationController

	def create
		render json: create_answer, status: :created
	end

	def index
		render json: answers
	end

	def show
		render json: answer
	end

	private

		def create_answer
			@create_rating ||= Answer.create!(rating: answer_params[:rating], product_id: params[:product_id], customer_id: params[:customer_id], question_id: params[:question_id])
		end

		def answers
			@answers ||= Answer.where(product_id: params[:product_id], customer_id: params[:customer_id]).all
		end

		def answer
			@answer ||= Answer.find(params[:id])
		end

		def answer_params
			params.permit(:rating)
		end
end