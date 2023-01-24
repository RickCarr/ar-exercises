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
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true}
  validates :hourly_rate, inclusion: {in: 40..200}
  validates :store, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true}
  validates :annual_revenue, numericality: {minimum: 0}
end

puts "Enter the NAME of a store"
user_store = gets.chomp

new_store = Store.new(name: user_store)

if new_store.save
  puts "Saved."
else
  puts "Oh no! Error detected:"
  new_store.errors.full_messages.each do |message|
    puts "#{message}"
  end
end

