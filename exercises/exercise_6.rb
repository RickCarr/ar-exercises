require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Kuai", last_name: "Liang", hourly_rate: 32)
@store1.employees.create(first_name: "Hanzo", last_name: "Hasashi", hourly_rate: 187)
@store1.employees.create(first_name: "Takeda", last_name: "Takahashi", hourly_rate: 99)

@store2.employees.create(first_name: "Ryan", last_name: "Montgomery", hourly_rate: 59)
@store2.employees.create(first_name: "Marshall", last_name: "Mathers", hourly_rate: 88)
@store2.employees.create(first_name: "Kendrick", last_name: "Lamar", hourly_rate: 80)

