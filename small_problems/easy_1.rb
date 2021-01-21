#1
def repeat(str, int)
  int.times {puts str}
end
repeat("hello", 3)

#2
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


#6

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

def stringey(int)
  arr = []
  int.times do |index|
    number = index.even? ? 1 : 0
    arr << number
  end
  arr.join
end