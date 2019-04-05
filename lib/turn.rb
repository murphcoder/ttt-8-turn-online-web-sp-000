def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def position_taken?(board,p_move)
  return (board[p_move] == "X" || return board[p_move] =="O")
  return !(board[p_move] == " " || board[p_move] == "" || board[p_move] == nil)
end

def valid_move?(board,p_move)
  return (p_move >= 0 && p_move <= 8 && !position_taken?(board,p_move))
end

def move(board,move,x_or_o = "X")
  board[move] = x_or_o
end