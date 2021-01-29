#1
=begin
def short_long_short(str1, str2)
  str1.length > str2.length ? str2 + str1 + str2 : str1 + str2 + str1
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"




#2
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  
  last_num = century % 10
  if [11, 12, 13].include?(century % 100)
    suffix = "th"
  elsif century % 10 == 1
    suffix = "st"
  elsif century % 10 == 2
    suffix = "nd"
  elsif century % 10 == 3
    suffix = "rd"
  else
    suffix = "th"
  end

  century.to_s + suffix
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

#3
def leap_year?(year)
  ((year % 4 == 0) && (year % 100 != 0)) || ((year % 100 == 0) && (year % 400 == 0))
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true


#4

def leap_year?(year)
  if year > 1751
    ((year % 4 == 0) && (year % 100 != 0)) || ((year % 100 == 0) && (year % 400 == 0))
  else
    (year % 4 == 0)
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true



#5

def multisum(num)
  sum = 0
  1.upto(num) do |x|
    if (x % 3 == 0) || (x % 5 == 0)
      sum += x 
    end
  end
  sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

#6
def running_total(arr)
  sum = 0
  arr.map do |num|
    sum += num
  end
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []


#7

DIGITS = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
}

def string_to_integer(str)
  chars = str.chars.map {|x| DIGITS[x]}
  
  value = 0
  chars.each {|y| value = 10 * value + y}
  value
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570

#8

def string_to_signed_integer(str)
  case str[0]
  when "+" then -string_to_integer(str[1..-1])
  when "-" then string_to_integer(str[1..-1])
  else string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

=end

#9

DIGITS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def integer_to_string(int)
  
end



#10