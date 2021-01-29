#1
# chop of the first number; #unshift method
# to append it to the end of a new array, but onyl for the first one 

def rotate_array(arr)
  new_arr = []
  arr.select do |num|
    new_arr << num if num != arr[0]
  end
  arr.each do |x|
    new_arr << x if x == arr[0]
  end
  new_arr
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true


def rotate_string(string)
  arr = string.chars
  arr = rotate_array(arr)
  arr.join
end

rotate_string("Hello")

def rotate_int(int)
  arr = int.to_s.chars
  arr = rotate_array(arr)
  arr.join.to_i
end

rotate_int(12345)


#2 is already in anki


#3 not in anki yet

#4




#5

#6

#7

#8

#9

#10