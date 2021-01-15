# Question 1

10.times {|x| puts (" " * x) + "The Flinstones Rock!"}

# Question 2
# puts "the value of 40 + 2 is " + (40 + 2) -> returns error because we are trying to add an interger to a string

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# Question 3
while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end

=begin Question 4
<< -> mutates the caller
+ -> does not mutate the caller

=end

# Question 5
# the local varibale is not accesible
def fib(first_num, second_num, limit=15)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Question 6
#34 as the variable 'answer' remains unchanged at 42

=begin 

Question 7
the data will be changed -> the ID is passed into the method
=end

# Question 8
# paper

# Question 9
# no

