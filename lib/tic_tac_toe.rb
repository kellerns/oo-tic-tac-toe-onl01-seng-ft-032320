class TicTacToe
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
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
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i - 1
  end
  
  def move(location, token="X")
    square = location.to_i
    @index = square
    @board[@index] = token
  end
  
  def position_taken?(index)
    position = index.to_i
    if @board[position] == "X" || @board[position] == "O"
      true
    else
      false
    end
  end 
    
  def valid_move?(input)
    num = input_to_index(input)
    if num >= 0 && num <= 8
      valid_number = num
        if @board[valid_number] == "X" || @board[valid_number] == "O"
          false
        else
          false
        end
    else
      false
    end
    
  end
    
  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, current_player(board))
      display_board(board)
    else
      turn(board)
    end
  end
  
  def turn_count
  end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
end