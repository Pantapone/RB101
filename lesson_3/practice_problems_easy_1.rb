=begin 

Question 1
-> output:
1
2
2
3

because: the uniq method is not changing the array it's calling; 
puts numbers.uniq in contrast would output only unique numbers
1
2
3

Question 2
1) not equal comparison, use e.g. to evaluate in if statement
2) negates the truth value, e.g. !true == false
3) destructive method -> 
4) ternary operator 
5) to see whether it's evaluting to true -> part of the method name
6) double negation == true -> boolean
=end

# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")
p advice

=begin Question 4
delete_at -> deletes an element at a specific index
delete -> deletes a specific element everywhere in the array

=end

# Question 5

p (10..100).include?(42)

# Question 6
famous_words = "seven years ago..."
p "Four score and " + famous_words
famous_words.prepend("Four score and ")
p famous_words

# Question 7

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
p flintstones.flatten!

# Question 8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc("Barney")

