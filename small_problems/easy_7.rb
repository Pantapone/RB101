
#1

require "pry"

def interleave(arr_1, arr_2)
  result = []
  arr_1.each_with_index do |element, index|
    result << element << arr_2[index]
  end
  result
end 

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def interleave_with_zip(arr_1, arr_2)
  arr_1.zip(arr_2).flatten
end

p interleave_with_zip([1, 2, 3], ['a', 'b', 'c'])


#2
# neither part not solved yet!


def letter_case_count(string)
  uppercase_count = string.count(string.upcase)
  lowercase_count = string.count(string.downcase)

  hash = {
    :lowercase => lowercase_count,
    :uppercase => uppercase_count,
  }

end

letter_case_count("Hllo")


#3

#4

#5

#6

#7

#8

#9

#10

