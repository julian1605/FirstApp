require 'rails_helper'

describe Product do

		context "when a user is created" do
	
			it "should not create a valid user" do
				expect(User.new(last_name: "Doe")).not_to be_valid
			end

		end	

end