# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'bundler'
Bundler.require

15.times do
	User.create(name: Faker::Zelda.character)			
end

7.times do
	Pin.create(url: Faker::Internet.url, user_id: User.all.sample.id)			
end

10.times do
	Comment.create(content: Faker::Hipster.paragraph, user_id: User.all.sample.id, pin_id: Pin.all.sample.id)			
end