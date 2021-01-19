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

#4
