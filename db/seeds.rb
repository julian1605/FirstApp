# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
		
		Product.create(:name => "seed-generated product2", :description => "I also created this product without using the HTML form!")
		Product.create(:name => 'Seed Product', :description => 'This is a product descitption for a product that is introduced in the seed.rb file', :image_url => '/assets/football.jpg')