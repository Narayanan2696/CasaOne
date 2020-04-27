class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rate, :product_id
end
