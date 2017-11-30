 current_seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

current_seats.each_with_index do |seat,row|
	seat.each_with_index do |filled, col|
		if filled == nil
			print "Row #{row + 1} seat #{col + 1} is free.  Do you want to sit there? (y/n)"
			sit = gets.chomp
			if sit == 'y'
				puts "What's your name?"
				viewer = gets.chomp
				seat[col] = viewer
				puts "#{current_seats}"
				abort("you have sat down.")
			end
		end
	end
end