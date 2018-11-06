require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


total_rev = Store.sum("annual_revenue")
num_stores = Store.count
num_over_1M = Store.where("annual_revenue >= ?", 1_000_000).count

puts "Total revenue for the company is #{total_rev}"
puts "Average revenue for all stores is #{total_rev/num_stores}"
puts "#{num_over_1M} stores generates annual revenue of more than $1M"

