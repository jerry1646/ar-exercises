require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

Store.last.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(40..200))
puts Store.last.employees.first.password