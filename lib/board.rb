class Board
    attr_accessor :cells

    def initialize
        reset!
    end

    def reset!
        @cells = Array.new(9, " ")
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def position(position)
        index = position.to_i - 1
        @cells[index] 
    end

    def full?
        @cells.all? {|spot| spot == "X" || spot == "O"}
    end

    def turn_count
        turns = @cells.select {|slot| slot == "X" || slot == "O"}
        turns.length
    end

    def taken?(input)
       position(input) == "X" ||position(input) == "O"
    end

    def valid_move?(position)
        !taken?(position) && position.to_i.between?(1,9)
    end

    def update(position, player)
        index = position.to_i - 1
        @cells[index] = player.token
    end

end