#1
=begin

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

-----------------------------------
Try 2: 
Input: number = minutes before/after midnight
Output: 
Algo:
- check whether number is positive or negative 


elsif hours < 0 
  elsif hours < - 23
    loop do
      hours += 24
      break if hours > -24
    end
    negative_hours = 24 + hours



  if minutes < 10
    minutes_new = "0#{minutes}"
  else
    minutes_new = "#{minutes}"
  end

  if hours > 23
    loop do
      hours -= 24
      break if hours >= 23
    end
    "#{hours}:#{minutes_new}"
  elsif hours > 9 && hours < 24
    "#{hours}:#{minutes_new}"
  elsif hours > 0 && hours < 10
    "0#{hours}:#{minutes_new}"
  else
    "00:00"
  end
end






require "pry"

def time_of_day(num)
  hours, minutes = num.divmod(60)
  
  if minutes < 10
    minutes_new = "0#{minutes}"
  else
    minutes_new = "#{minutes}"
  end


  if hours >= 0 && hours < 10
    "0#{hours}:#{minutes_new}"
  elsif hours > 9 && hours < 24
    "#{hours}:#{minutes_new}"
  elsif hours > 23
    loop do
      hours -= 24
      break if hours < 24
    end
    if hours >= 0 && hours < 10
      "0#{hours}:#{minutes_new}"
    elsif hours > 9 && hours < 24
      "#{hours}:#{minutes_new}"
    end
  elsif hours < 0 && hours > -10
    negative_hours = 24 + hours
    "#{negative_hours}:#{minutes_new}"
  elsif hours < 0 && hours < -9 && hours > -24
    negative_hours = 24 + hours
    "#{negative_hours}:#{minutes_new}"
  elsif hours < -23
    loop do
      hours += 24
      break if hours > -24
    end
    negative_hours = 24 + hours
    if negative_hours >= 0 && negative_hours < 10
      "0#{negative_hours}:#{minutes_new}"
    elsif hours > 9 && hours < 24
      "#{negative_hours}:#{minutes_new}"
    end
  end
end
  
p time_of_day(0) 
p time_of_day(-3) 
p time_of_day(35) 
p time_of_day(-1437)
p time_of_day(3000) 
p time_of_day(800) 
p time_of_day(-4231) 



#3
def after_midnight(string)
  arr = string.split(":").map(&:to_i)
  total = 0
  arr.each do |num|
    if arr[0] == 24
      total = arr[1]
    else
      total = (arr[0] * 60) + arr[1]
    end
  end
  total
  
end

MINUTES_PER_DAY = 60*24
def before_midnight(string)
  arr = string.split(":").map(&:to_i)
  total_minutes = 0
  arr.each do |num|
    total_minutes = (arr[0] * 60) + arr[1]
  end
  if total_minutes == 0
    total = 0
  else
    total = MINUTES_PER_DAY - total_minutes
  end
  total

end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
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



def swap(string)
  words = string.split(" ")
  words.map do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'


#5

def cleanup(string)
  result = string.gsub(/[^a-z]/i, " ")
  result.squeeze(" ")
end

def cleanup_2(string)
  letters = ("a".."z").to_a
  new_arr = []
  arr = string.chars
  arr.each do |i|
    if letters.include?(i)
      new_arr << i
    else
      new_arr << " " unless new_arr.last == " "
    end
  end
  new_arr.join
end



p cleanup_2("---what's my +*& line?") 

p cleanup_2("---what's my +*& line?") == ' what s my line '


p cleanup("---what's my +*& line?") 

p cleanup("---what's my +*& line?") == ' what s my line '


#6

# hash  -> key: number of letters in the word; value: number of times it occurs
require "pry"

def word_sizes(string)
  hash = Hash.new(0)
 
  words = string.split
  words.each do |word|
    hash[word.size] += 1
  end
  hash
end


p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?") 
p word_sizes('')

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}


#7
def word_sizes(string)
  hash = Hash.new(0)
 
  words = string.split
  words.each do |word|
    word = word.delete('^A-Za-z')
    hash[word.size] += 1
  end
  hash
end


p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

=end
#8

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

#9

#10

#11


=begin

Input: array of words, some can occur more then once
Output: hash, where the words of the arary are the keys, and the number of times it came up, the value

Problem:
- count the number of times a word comes up in an array of words
- # count method on array

=end

