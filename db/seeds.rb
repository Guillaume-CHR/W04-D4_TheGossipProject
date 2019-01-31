# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'bundler'
Bundler.require

10.times do
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)			
end

60.times do
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)			
end

20.times do
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)	
end

20.times do
	Appointment.create(date: Faker::Date.between(365.days.ago, Date.today) ,doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, city_id: City.all.sample.id)			
end

40.times do
	Specialty.create(name: Faker::Educator.course)			
end

40.times do
	JoinTableSpecialtyDoctor.create(specialty_id: Specialty.all.sample.id, doctor_id: Doctor.all.sample.id)			
end