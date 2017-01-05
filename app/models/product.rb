class Product < ApplicationRecord
  has_many :orders
  def highest_rating_comment
  	comments.rating_desc.first
	end
	def lowest_rating_comment
		comments.rating_asc.first
	end
end