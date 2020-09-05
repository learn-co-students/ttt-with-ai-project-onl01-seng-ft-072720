module Players
	class Human < Player
        def move(board)
			puts "XOXO|------------------------Please enter 1-9-------------------------|OXOX"
     		input = gets.strip
     		input	
		end
	end
end