require_relative '../setup'

puts "Exercise 1"
puts "----------"


class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, womens_apparel: true, mens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, womens_apparel: true, mens_apparel: false)
gastown = Store.create(name: "Gastown", annual_revenue: 190000, womens_apparel: false, mens_apparel: true)

puts Store.count.to_s

# Your code goes below here ...
