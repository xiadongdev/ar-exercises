require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
#require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store2.employees.create(first_name: "Xia", last_name: "Dong", hourly_rate: 200)
puts Employee.find_by(first_name: "Xia").password