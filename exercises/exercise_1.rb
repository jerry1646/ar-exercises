require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

require 'active_record'

class Store < ActiveRecord::Base
  has_many :employees
  validates :name,
    presence: true,
    length: {minimum: 3}
  validates :annual_revenue,
    presence: true,
    numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_carry_mens_or_wms

  def must_carry_mens_or_wms
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must carry at least one of Men's and Women's Apparel")
    end
  end
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store,
    presence: true
  validates :hourly_rate,
    presence: true,
    numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

Store.create(name: "Burnaby", annual_revenue: 300_000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1_260_000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190_000, mens_apparel: true, womens_apparel: false)

puts Store.count
