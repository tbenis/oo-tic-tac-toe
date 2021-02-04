class TicTacToe
    WIN_COMBINATIONS = [
        [0,1,2], # Top row
        [3,4,5],  # Middle row
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [6,4,2]
        # et cetera, creating a nested array for each win combination
    ]
    def initialize
        @board = [" "," "," "," "," "," "," "," "," "]
    end
    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(input)
        input = input.to_i - 1
    end
    def current_player
        turn_count % 2 == 0 ? "X" : "O"
      end
    
      def turn_count
        @board.count{|token| token == "X" || token == "O"}
      end
    
      
end