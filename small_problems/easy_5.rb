#1

def ascii_value(str)
  chars = str.chars
  sum = 0
  chars.each do |string|
    sum += string.ord
  end
  sum
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0


#2

=begin
Problem & Examples
  Input:
    - integer, can be positive or negative
    -

  Output:
    - string
    - represent sthe time after midnight in minutes 
    - "hh:mm"

  Rules: 
    Explicit:
      - don't use Date/Time class
      - + integer -> after midnight
      - - integer -> before midnight

    Implicit:



Algorithm
  - if condition to check whether positive or negative integer
  - loop for positive integer
  - loop for negative integer
  - divmod? division & remainder
  - integer represents the minutes -> /60 for hours
  - 2 parts to answer: hh & minutes -> add together by string interpolation
  - *for positive integer: if hour > 23 substract 24 until it's not over 23 anymore*
  - for negative integer: if hour > 23 add 24 until it's not over -23 aynmore
  - 

--------------- Try One --------- -> Way too complicated, works partially!


def time_of_day(int)
end

require "pry"


int = 35
hour = int/60
if int >= 0
  loop do
    hour -= 24 if hour > 23
    break if hour < 24
  end
else
  loop do
    hour += 24 if hour < -24
    break if hour >= -24
  end
  hour = 24 - hour.abs
end

minutes = int.to_f/60

loop do 
  minutes -= 24 if minutes > 23
  break if minutes < 24
end

minutes = (minutes - hour) * 60
minutes = minutes.to_i

arr_min = minutes.to_s.chars
minutes = arr_min.each_with_object([]) do |num, new_arr|
  if minutes < 60
    new_arr << ("0" << num)
  else
    new_arr << num
  end
end
minutes = minutes.join.to_s


arr = hour.to_s.chars
hour = arr.each_with_object([]) do |num, new_arr|
  if hour < 10
    new_arr << ("0" << num)
  else
    new_arr << num
  end
end
hour = hour.join.to_s

puts "#{hour}:#{minutes}"





 

#3

#4
#input: string
#output: string, but first and last letter are swapped
#idea: convert into array of characters, ues array index access to swap 0 and 1 and -size with -size + 1with each other, join characters together 

require "pry"

def swap_word(string)
  string[0], string[-1] = string[-1], string[0]
  string
end

def swap(string)
  result = string.split.map do |word|

end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=end

#5

#6

#7

#8

#9

#10

#11

require "pry"

=begin

Input: array of words, some can occur more then once
Output: hash, where the words of the arary are the keys, and the number of times it came up, the value

Problem:
- count the number of times a word comes up in an array of words
- # count method on array

=end

