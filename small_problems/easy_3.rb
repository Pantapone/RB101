#1 

puts "Enter the 1st number:"
number_1 = gets.chomp.to_i

puts "Enter the 2nd number:"
number_2 = gets.chomp.to_i

puts "Enter the 3rd number:"
number_3 = gets.chomp.to_i

puts "Enter the 4th number:"
number_4 = gets.chomp.to_i

puts "Enter the 5th number:"
number_5 = gets.chomp.to_i

puts "Enter the last number:"
number_6 = gets.chomp.to_i

numbers_arr = [number_1, number_2, number_3, number_4, number_5]

if numbers_arr.include?(number_6)
  puts "The number #{number_6} appears in #{numbers_arr}." 
else
  puts "The number #{number_6} does not appear in #{numbers_arr}."
end



#2

def prompt(str)
  puts "==> #{str}"
end

prompt "Enter the first number:"
num_1 = gets.chomp.to_f

prompt "Enter the second number:"
num_2 = gets.chomp.to_f

prompt "#{num_1} + #{num_2} = #{num_1 + num_2}"
prompt "#{num_1} - #{num_2} = #{num_1 - num_2}"
prompt "#{num_1} * #{num_2} = #{num_1 * num_2}"
prompt "#{num_1} / #{num_2} = #{num_1 / num_2}"
prompt "#{num_1} % #{num_2} = #{num_1 % num_2}"
prompt "#{num_1} ** #{num_2} = #{num_1 ** num_2}"



#3
puts "Please write a word or multiple words:"
str = gets.chomp.to_s
number_chars = str.delete(' ').size
puts "There are #{number_chars} characters in \"#{str}\"."


#4
def multiply(x, y)
  x * y
end

multiply(5, 3) == 15
puts multiply([1, 2, 3], 2)

#5

def square(a)
  multiply(a, a)
end

square(5) == 25
square(-8) == 64


#6

def xor?(a, b)
  if ((a == true) && (b == false)) || ((a == false) && (b == true))
    true
  else
    false
  end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false


#7
def oddities(arr)
  counter = 0
  new_arr = []
  arr.select do |element|
    new_arr << element if counter.even?
    counter += 1
  end
  new_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []


#8
# -> Complicated version
#def palindrome?(str)
#  if str == str.reverse
#    true
#  else
#    false
#  end
# end

def palindrome?(str)
  str == str.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

def arr_palindrome?(arr)
  arr == arr.reverse
end

p arr_palindrome?([1, 2, 3, 2, 1])

def arr_str_palindrome?(x)
  x == x.reverse
end

p arr_str_palindrome?([1, 2, 3, 2, 1])
p arr_str_palindrome?('madam')



#9

def real_palindrome?(str)
  str = str.downcase.delete('^a-z0-9')
  palindrome?(str) 
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false


#10

def palindromic_number?(num)
  num == num.to_s.reverse.to_i
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true