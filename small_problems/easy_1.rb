#1

def repeat_2(string, int)
  int.times {puts string}
end

repeat_2('Hello', 3)


def repeat(str, int)
  int.times {puts str}
end
repeat("hello", 3)

#2
# absolute value

def is_odd_2?(int)
  int % 2 != 0
end

puts is_odd_2?(2)    # => false
puts is_odd_2?(5)    # => true
puts is_odd_2?(-17)  # => true
puts is_odd_2?(-8)   # => false
puts is_odd_2?(0)    # => false
puts is_odd_2?(7)    # => true


def is_odd?(int)
  int % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

#3

def digits(int)
  arr = int.to_s.chars
  arr.map {|i| i.to_i}
end


puts digits(12345) == [1, 2, 3, 4, 5]     # => true
puts digits(7) == [7]                     # => true
puts digits(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digits(444) == [4, 4, 4]             # => true


def digit_list(int)
  digits = []
  counter = 0
  while counter < int.to_s.size
    digits << int.to_s[counter].to_i
    counter += 1
  end
  digits
end

puts digit_list(123).inspect

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


# Alterantive loop do end 

=begin
def digit_list(int)
  digits = []
  counter = 0
  loop do
    digits << int.to_s[counter].to_i
    counter += 1
    break if counter == int.to_s.size
  end
  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

Alternative 

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

=end

#4

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]


# Input: Array
# Output: Hash: key -> element from array; value -> count of that element




def count_occurrences(arr)
  occurences = Hash.new(0)
  arr.each do |element| 
    occurences[element.downcase] += 1
  end
  occurences

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)


#5

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


def reverse_sentence(string)
  string.split(" ").reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'



#6

def reverse_words_2(string)
  arr = string.split(" ")
  arr.map do |word|
    word.reverse! if word.size >= 5
  end
  arr.join(" ")
end

puts reverse_words_2('Professional')          # => lanoisseforP
puts reverse_words_2('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words_2('Launch School')         # => hcnuaL loohcS


def reverse_words(str)
  words = str.split
  words.each do |element|
    if element.size >= 5
      element.reverse! 
    end
  end
  words.join(' ')
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

#7
require "pry"

def stringey_2(int)
  arr = []
  int.times do |i|
    if i.even?
      arr << 1
    else
      arr << 0
    end
  end
  arr.join
end

puts stringey_2(6) == '101010'
puts stringey_2(9) == '101010101'
puts stringey_2(4) == '1010'
puts stringey_2(7) == '1010101'


def stringey(int)
  arr = []
  int.times do |index|
    number = index.even? ? 1 : 0
    arr << number
  end
  arr.join
end

#8
def average(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  result = sum.to_f / arr.size.to_f
  result.round(2)
end

puts average([1, 6]) # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

#9

def sum(int)
  arr = int.to_s.chars
  b = arr.each_with_object([]) do |element, new_arr|
     new_arr << element.to_i
  end
  b.inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#10

def calculate_bonus(salary, boolean)
  if boolean == true
    salary / 2
  else
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000