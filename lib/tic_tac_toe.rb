WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

<<<<<<< HEAD
=======
# Helper Methods
>>>>>>> bb93bfbd2a0acc99ed82a4ac6891a6b22418f187
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

<<<<<<< HEAD
def move(board, index, current_player)
=======
def move(board, index, current_player = "X")
>>>>>>> bb93bfbd2a0acc99ed82a4ac6891a6b22418f187
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
<<<<<<< HEAD
    move(board, index, current_player(board))
=======
    move(board, index)
>>>>>>> bb93bfbd2a0acc99ed82a4ac6891a6b22418f187
    display_board(board)
  else
    turn(board)
  end
end

def turn_count(board)
  counter = 0
  board.each do |turn|
    if turn == "O" || turn == "X"
      counter += 1
    end
  end
    return counter
end

def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end

def won?(board)
  WIN_COMBINATIONS.each do |combo|

    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return [combo[0], combo[1], combo[2]]
    end
  end
false
end

def full?(board)
  board.all? do |xo|
    xo == "X" || xo == "O"
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  end
end

def over?(board)
  if won?(board) != false || draw?(board) == true
    return true
  end
end

def winner(board)
  if won?(board) == false
    return nil
  else
    return board[won?(board)[0]]
  end

<<<<<<< HEAD
  WIN_COMBINATIONS.each do |combo|

    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]

    if position_1 == "X" && position_2 == "X" && position_3 = "X" || position_1 == "O" && position_2 == "O" && position_3 = "O"
      return [combo[0], combo[1], combo[2]]
=======
  WIN_COMBINATIONS.each do |i|
    win_index_1 = WIN_COMBINATIONS[0]
    win_index_2 = WIN_COMBINATIONS[1]
    win_index_3 = WIN_COMBINATIONS[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 = "X" || position_1 == "O" && position_2 == "O" && position_3 = "O"
      return win_combination
>>>>>>> bb93bfbd2a0acc99ed82a4ac6891a6b22418f187
    else
      false
    end
  end
end

def play(board)
<<<<<<< HEAD
  loop do
    turn(board)
    if won?(board) == [combo[0], combo[1], combo[2]]
      puts "Congrats, #{winner(board)} you are the winner!"
      break
    elsif draw?(board) == true
      print "Cat's Game!"
=======
  counter = 0
  loop do
    counter += 1
    turn(board)
    if counter == 9
>>>>>>> bb93bfbd2a0acc99ed82a4ac6891a6b22418f187
      break
    end
  end
end
