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
# Input: Array
# Output: that same array mutated, containing the values in reverse order
# Algo: 
=begin
- define method
- define two counters, for index counting from 0 onwards and from -1 onwards
  - counter_1
  - counter_2
- iterate through the given array,
- for each element in the array assign the value of counter_1 to the value of counter_2
- increment both counters
  - counter_1 + 1
  - counter_2 -1
- return the original array





## this solution seems a bit like cheating because you do just use a new array and then revert back to the old one, but it passes the cases


def reverse!(arr)
  counter = -1
  new_arr = []
  arr.each do |element|
    new_arr << arr[counter]
    counter -= 1
  end
  arr.replace(new_arr)
end



def reverse!(list)
  list.sort! { |a, b| list.index(b) <=> list.index(a) }
end



p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true





#5
def reverse(arr)
  counter = -1
  new_arr = []
  arr.each do |element|
    new_arr << arr[counter]
    counter -= 1
  end
  new_arr
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
=end

#6
=begin
-> Output: one new array
- Algo: 
- define new multidimensional array containing the two subarrays
- flatten the multidimensional array so that it's just one array
- sort the new array, ascending
- initialize a counter
- iterate through the new array
  - select only the elements, which are not otherwise in the array
  - array



def merge(arr1, arr2)
  merged_array = [arr1, arr2].flatten!.sort!
  new_arr = []
  merged_array.select do |num|
    new_arr << num unless new_arr.include?(num)
  end
  new_arr
end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9])


#7

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) 
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]



#8

def find_dup(arr)
  arr.sort!
  counter = 0
  dup = arr.select do |num|
    counter += 1
    arr[counter] == num
  end
  dup.join.to_i
end



p find_dup([1, 5, 3, 1])
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73




#9

def include?(arr, value)
  result = nil
  arr.each do |num|
    return true if value == num
  end
  false
end

def include?(arr, value)
  arr.any? { |item| item == value }
end

p include?([1,2,3,4,5], 3) 
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false


#10
Intput: Number
Output: * on new lines, number of times as number indicates
Algorithm:
- goes throuhg number, for each number puts number of *
- make area with number 1 to number given in it
- iterate through the area
  - mul


=end



def triangle(int)
  (1..int).each do |num|
    puts (" " * (int - num)) + ("*" * num)
  end
end


triangle(5)
triangle(9)
