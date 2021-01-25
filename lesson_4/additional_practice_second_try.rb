#1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = Hash.new

flintstones.each_with_index do |name, index|
  hash[name] = index
end

#2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

all_ages = 0
a = ages.each do |_, value|
  all_ages += value
end

#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! {|_, age| age < 100}
ages.keep_if {|_, age| age < 100}

#4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

#5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index {|name, index| puts index if name.start_with?("Be")}

p flintstones.index {|name| name[0, 2] == "Be"}

#6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|name| name[0, 3]}

#7



#8
  #1
  #3
  #1
  #2

#9


def titleize(str)
  str.split(" ").each {|word| word.capitalize!}.join(" ")
end

words = "the flintstones rock"
p titleize(words)

#10
