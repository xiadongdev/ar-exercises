require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find_by(id:1)
puts @store1.name

@store2 = Store.second
puts @store2.name

@store2.update(name: 'Coquitlam')
puts @store2.name