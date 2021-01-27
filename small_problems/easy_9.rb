#1

def greetings(arr, hash)
  name = arr.join(" ")
  title = hash[:title]
  occupation = hash[:occupation]
  puts "=> Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

#2





#3 
def negative(num)
 num.negative? ? num : -num
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0     # There's no such thing as -0 in ruby

#4

# - 5, 4, 3, 2, 1 until int == 0
# 1 + 2 + 3 + 4, until 
# int -> to array
# 1.upto(5)


def sequence(int)
  arr = "1".upto(int.to_s).to_a
  arr.map {|ele| ele.to_i}
end

def sequence_2(int)
  1.upto(int).to_a {|i| i }
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

p sequence_2(5) == [1, 2, 3, 4, 5]
p sequence_2(3) == [1, 2, 3]
p sequence_2(1) == [1]

p sequence_2(-1)


def sequence_3(int)
  if int > 0
    1.upto(int).to_a {|i| i }
  else
    int.upto(1).to_a {|i| i }
  end
end

p sequence_3(5)
p sequence_3(0)
p sequence_3(-5)


#5

def uppercase?(string)
  string.upcase == string ? true : false
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true


#6

def word_lengths(string)
  arr = string.split(" ")
  arr.map do |word|
    word << (" " + word.size.to_s)
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

#7

def swap_name(string)
  words = string.split
  new_string = ""
  words.reverse_each do |word|
    new_string << word.to_s + ", " 
  end
  new_string.chop.chop
end

def swap_name_2(string)
  words = string.split
  words.reverse!
  "#{words[0]}, #{words[1]}"
end

def swap_name_3(string)
  words = string.split
  "#{words[1]}, #{words[0]}"
end

def swap_name_4(string)
  string.split.reverse.join(", ")
end

p swap_name('Joe Roberts')

p swap_name_2('Joe Roberts')

p swap_name_3('Joe Roberts')

p swap_name_4('Joe Roberts')

#8

#9
def get_grade(grade1, grade2, grade3)
  mean = (grade1 + grade2 + grade3) / 3
  case mean
  when 0..60 then "F"
  when 60..70 then "D"
  when 70..80 then "C"
  when 80..90 then "B"
  when 90..100 then "A"
  else "You got extra points!"
  end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D" 

#10

def buy_fruit(arr)
  new_arr = []
  arr.each do |subarray|
      subarray[1].times do |i|
        new_arr << subarray[0]
    end
  end
  new_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]
