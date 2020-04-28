class Admin::QuestionsController < ApplicationController

	def create
		render json: create_question, status: :created
	end

	def index
		render json: questions
	end

	def show
		render json: question
	end

	private

		def product
			@product ||= Product.find(params[:product_id])
		end

		def create_question
			@create_question ||= product.questions.create!(question_params)
		end

		def question
			@question ||= product.questions.find(params[:id])
		end

		def questions
			@questions ||= product.questions
		end

		def question_params
			params.require(:question).permit(:product_question)
		end
end