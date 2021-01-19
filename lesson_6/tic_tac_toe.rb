=begin ** Unterstanding the Problem **

Rough Description of the Game
-------------------------------
* 2 players
* 1 player gets circles, while the other player uses crosses as a symbol
* each has one action per turn
* can select from 
* the game has a graphical representation of 9 fields, ordered as 3 x 3
* each player marks with his/her symbol one of these fields (which can't be reused)
* a player wins if he/she has three of their symbols in one row (or diagonal)
* if all fields are used but none of the players has three in a row, nobody wins


Outline (my own! a bit different to walk-through)
--------
0) welcome Player ...
1) Display empty game board (3x3 -> total of 9 fields)
2) One player chooses their symbol (circle/cross); the other player automatically gets the other symbol
3) Have a random algorithm which decides which player starts
4) Ask the first player to choose their field to mark
5) Update the board display
6) Ask the second player to choose / let the computer choose
7) Update the board display
8) Loop until there's a winner (winner if three in a row); stop if no fields available anymore
9) if there is a winner -> display winner; otherwise -> display "It's a tie"
10) Ask player: "Another round?"
11) if yes -> go to 1)
12) Thank you & good bye!

=end

# ** Walk-through: Tic Tac Toe **
require "pry"


INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = '0'


def prompt(string)
  puts "=> #{string}"
end


def display_board(brd)
  system "clear"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == INITIAL_MARKER}
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice!"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  false
end

board = initialize_board
display_board(board)

loop do
  player_places_piece!(board)
  computer_places_piece!(board)
  display_board(board)
  break if someone_won?(board) || board_full?(board)
end

display_board(board)

