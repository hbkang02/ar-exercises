require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: "Surrey", annual_revenue: 1200000, womens_apparel: false, mens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 310000, womens_apparel: true, mens_apparel: true)
yaletown = Store.create(name: "Yaletown", annual_revenue: 1200000, womens_apparel: true, mens_apparel: false)

@mens_store = Store.where(mens_apparel: true)
@women_store = Store.where(womens_apparel: true)

@mens_store.each do |store|
  puts store.name + store.annual_revenue.to_s
end

@women_store.each do |store|
  if store.annual_revenue < 1000000
    puts store.name + store.annual_revenue.to_s
  end
end
# Your code goes here ...
