class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :rating, :customer_id, :product_id, :question

  def question
  	QuestionSerializer.new(object.question)
  end
end
