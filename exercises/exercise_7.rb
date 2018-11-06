require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Please enter a new store name:"
@new_store_name = gets.chomp
@new_store = Store.create(name: @new_store_name)
if !@new_store.valid?
  @new_store.errors.messages.each do |location, msg|
    puts "ERR! #{location}: #{msg}"
  end
end