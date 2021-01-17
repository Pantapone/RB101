#1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_h = {}
flintstones.each_with_index.map do |key, value| 
  flintstones_h[key] = value
end

puts flintstones_h

#2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages_added = 0
ages.map {|key, value| ages_added += value}

puts ages_added

#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

younger_age = ages.select {|name, age| age < 100}
puts younger_age

#4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts ages.values.min

#5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.index {|name| name[0, 2] == "Be"}

#6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
new_names = flintstones.map {|name| name[0, 3]}
puts new_names

#7
statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

#8
# 1, 3
# 1, 2

#9
words = "the flintstones rock"
new_words = words.split.map {|word| word.capitalize!}.join(" ")
puts new_words

#10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end