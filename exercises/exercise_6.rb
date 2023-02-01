require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many: employees
end

class Employee < ActiveRecord::Base
  belongs_to :store

  @store1.employees.create(first_name: "John", last_name: "Kang", hourly_rate: 20)
  @store2.employees.create(first_name: "Amy", last_name: "Chao", hourly_rate: 45)
  @store2.employees.create(first_name: "Kin", last_name: "Dred", hourly_rate: 55)
  @store3.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
end


# Your code goes here ...
