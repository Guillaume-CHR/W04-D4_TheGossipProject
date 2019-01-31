# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   
require 'bundler'
Bundler.require


10.times do 
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id, email: Faker::Internet.email, age: rand(8..35), description: Faker::Name.first_name)			
end

10.times do
	Gossip.create(title: Faker::Name.first_name, content: Faker::Name.first_name, user_id: rand(1..10))
end

10.times do
	Tag.create(title: Faker::Name.first_name)
end

10.times do
	JoinGossipTag.create(tag_id: rand(1..10), gossip_id: rand(1..10))
end

10.times do
	Comment.create(content: Faker::Name.first_name, user_id: rand(1..10), gossip_id: rand(1..10))
end

10.times do
	CommentComment.create(content: Faker::Name.first_name, user_id: rand(1..10), comment_id: rand(1..10))
end

10.times do
	Like.create(user_id: rand(1..10), gossip_id: rand(1..10))
end

10.times do
	PrivateMessage.create(content: Faker::Name.first_name, recipient_id: rand(1..10), sender_id: rand(1..10))
end