#1
def sum_of_sums(arr)
  counter = 0
  sum = 0
  arr.each.inject(:+) do |num|
    multiplier = arr.size - counter  
    sum += arr[counter] * multiplier
    counter += 1
    sum
  end 
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

#2
=begin

print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter an adjective: "
adjective = gets.chomp

print "Do you #{verb} your #{adjective} #{noun} quickly? That's hilarious!"

=end

#3 
=begin
Problem: (Explicit Rules)
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
The return value should be arranged in order from shortest to longest substring

Example Test Cases: (Implicit Rules)
- Capitalization matters
- Spaces matter
- special characters matter

Data Structure: 
- Input
  - string with aslpha chars, up/downcase, spaces and special chars
- Output
  - sorted array, containing substrings

Algorithm:


=end







#4

#5

#6

#7

#8

#9

#10