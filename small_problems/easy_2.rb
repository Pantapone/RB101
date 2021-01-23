
# 1
puts "What is your name?"
name = gets.chomp.capitalize!
age = rand(20..200)
puts "#{name} is #{age} years old!"

#2 
SQMETERS_TO_SQFEET = 10.7639

puts "What is the length of your room in meters?"
length = gets.chomp.to_f
puts "What is the width of your room in meters?"
width = gets.chomp.to_f
area_meters = (length * width).round(2)
area_feets = (area_meters * SQMETERS_TO_SQFEET).round(2)
puts "The area of the room is #{area_meters} square meters (#{area_feets} square feet)."

#3
puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip_amount = ((tip_percentage/100) * bill).round(2)
total_bill = (tip_amount + bill).round(2)

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total is $#{format("%.2f",total_bill)}"


#4
require 'date'

puts "What is your age?"
age = gets.to_i
puts "At what age would you like to retire?"
age_retire = gets.to_i

years_to_work = age_retire - age

puts "It's #{Date.today.year}. You will retire in #{(Date.today.year + years_to_work)}"
puts "You have only #{years_to_work} years of work to go!"



#5

puts "What is your name?"
name = gets.chomp.to_s

if name.include?('!')
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end


#6
#a
counter = 1
loop do
  puts counter if counter.odd?
  counter += 1
  break if counter > 99
end

#b
(1..99).select do |num|
  puts num if num % 2 != 0
end

#c
1.upto(99) {|x| puts x if x.odd?}


#7
#a
counter = 1
loop do
  puts counter if counter.even?
  counter += 1
  break if counter > 99
end

#b
(1..99).select do |num|
  puts num if num % 2 == 0
end

#c
1.upto(99) {|x| puts x if x.even?}



#8
def total_sum(int)
  total = 0
  1.upto(int) {|num| total += num}
  total
end

def total_product(int)
  total = 1
  1.upto(int) {|num| total *= num}
  total
end

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp.to_s

if answer == "s"
  sum = total_sum(number)
  puts "The sum of the intergers between 1 and #{number} is #{sum}."
elsif answer == "p"
  product = total_product(number)
  puts "The product of the intergers between 1 and #{number} is #{product}."
else
  puts "That's not a valid input!"
end


#9
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB
# => BOB
# both name and save_name are variables which are pointing to the same object, thus when calling the method upcase! mutates the caller and thereby modifies the local variable name, it also modifies the local variable save_name as both are pointing to the same string Object 

#10

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
Moe 
Larry 
CURLY 
SHEMP 
Harpo 
CHICO 
Groucho 
Zeppo

=> the << method is mutating the caller, thus array2 is modified so that it contains the same values as array1, thus they are pointing to the same array object
changing the values in array1 with the mutating method upcase!, will thus also change array2

=end
