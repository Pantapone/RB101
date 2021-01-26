#1
=begin
#DEGREE = "\xC2\xB0"


#2
VOWELS = "aeiouAEIOU"

def remove_vowels(arr)
  arr.map do |ele|
      ele.delete(VOWELS)
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) 
puts remove_vowels(%w(green YELLOW black white)) 
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#3
=end

#4
require "pry"

list = [1,2,3,4]
result = reversen!(list)



#5

#6

#7

#8

#9

#10