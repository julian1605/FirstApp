class Product < ApplicationRecord
  has_many :orders_items
  has_many :comments
  validates :name, presence: true

  default_scope { where(active: true) }
  
  def highest_rating_comment
  	comments.rating_desc.first
	end
	def lowest_rating_comment
		comments.rating_asc.first
	end

	def average_rating
  comments.average(:rating).to_f
	end
end