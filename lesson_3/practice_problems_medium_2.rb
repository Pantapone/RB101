=begin 
Question 1
1) same id for outside & inside
2) new values -> new ids
3) when outside again, same id

=end

# Question 2
# same id, except outside not access to inside

=begin Question 3
the difference is that << mutates the caller and modifies the string permenantly while += does not

output
-> my_string: pumpkin
-> my_array: [pumpkins, rutabaga]

=end

=begin 

Question 4
output
-> my_string: pumpkinrutabaga
-> my_array: [pumpkins]
=end

# Question 5

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 6

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid("blue")