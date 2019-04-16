require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Wonderland", hourly_rate: 50)
@store1.employees.create(first_name: "Bob", last_name: "Lambs", hourly_rate: 40)

@store2.employees.create(first_name: "Carl", last_name: "Henson", hourly_rate: 50)
@store2.employees.create(first_name: "Destiny", last_name: "Huffman", hourly_rate: 40)
@store2.employees.create(first_name: "Yaretzi", last_name: "Mayo", hourly_rate: 40)
