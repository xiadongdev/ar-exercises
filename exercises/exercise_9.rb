require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_8'

puts "Exercise 9"
puts "----------"

# Make sure non-empty stores cannot be destroyed
@store1 = Store.find(1)
puts @store1.name
if @store1.destroy
  puts "Store destroyed!"
else
  puts "Could not destroy store. It has #{@store1.employees.size} employees"
end

# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0, mens_apparel: true)
if @empty_store.destroy
  puts "Empty Store destroyed! This is good"
else
  puts "Whoa! Empty store should be destroyable... Not cool!"
end
