# Question 1
# nothing is happening (value nil)

# Question 2
# both informal_greeting and greeting are referencing the same object_id so they are both changed to "hi there"

# Question 3
=begin
"one is: one"
"two is: two"
"three is: three"

"one is: one"
"two is: two"
"three is: three"

"one is: two"
"two is: three"
"three is: one"
=end

# Question 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
 true
end
