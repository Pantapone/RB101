#1

def decrease(counter)
  counter -= 1
end


counter = 10
10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

#2

def shout_out_to(name)
  name = name.chars.map { |c| c.upcase! }

  puts 'HEY ' + name.join
end

shout_out_to('you') # expected: 'HEY YOU'

#3

def valid_series?(nums)
  odd_count = nums.count { |n| n.odd? }
  if (nums.sum == 47) && (odd_count == 3)
    return true
  else
    false
  end
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false


#4

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = ""

  i = 0
  while i < words.length
    reversed_words = words[i].to_s + " " + reversed_words.to_s
    i += 1
  end

  reversed_words
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'


#5

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum


#6

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum


#7

#8

#9

#10