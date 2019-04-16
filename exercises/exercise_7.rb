require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"


p = Employee.create(hourly_rate: 201)
puts p.valid?
puts p.errors.messages

s = Store.create(name: "CA", annual_revenue: 33.3, mens_apparel: false, womens_apparel: false)
puts s.valid?
puts s.errors.details[:name]
puts s.errors.details[:annual_revenue]
puts s.errors.details[:mens_apparel]
