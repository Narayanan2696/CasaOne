class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :average_rating, :total_rating, :ratings

	def average_rating
		(object.ratings.sum("rate")/total_rating).round(2)
	end

	def total_rating
		@total_rating ||= object.ratings.count
	end

	def ratings
		ActiveModel::Serializer::CollectionSerializer.new(object.ratings, serializer: RatingSerializer)
	end
end
