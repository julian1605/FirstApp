require 'rails_helper'

describe Product do

		before do
			@product = Product.create!(name: "race bike")
			@user = User.create!(email: "john@doe.com", password: "test123")
			@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
			@product.comments.create!(rating: 3, user: @user, body: "it's a bike")
			@product.comments.create!(rating: 5, user: @user, body: "Nice bike!")
		end


		context "when the product has comments" do
	
			it "returns the average rating of all comments" do
				expect(@product.average_rating).to eq 3
			end
		end	

		context "when a product is created" do
			it "is not valid" do
				expect(Product.new(description: "Nice bike")).not_to be_valid
			end
		end

end