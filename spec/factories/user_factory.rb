FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
  	email 
  	password "test123"
  	first_name "John"
  	last_name "Mail"
  	admin false
  end
  
  factory :user2, class: User do
  	email 
  	password "test123"
  	first_name "Mister"
  	last_name "Doe"
  	admin false
  end


  factory :admin, class: User do
  email 
  password "qwertyuiop"
  admin true
  first_name "Admin"
  last_name "User"
	end
end