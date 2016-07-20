def setting_height(height)
	@towers = {1 => (1..height).to_a.reverse, 2 => [], 3 => [] } 

	while ( @towers[2] != (1..height).to_a.reverse ) || ( @towers[3] != (1..height).to_a.reverse )
		puts "Enter tower number you want to remove disk from and tower number you want to put disk in (as an array; e.g. [2, 3]): " 
		users_move = eval(gets.chomp)

		removing_disk = @towers[users_move[0]] #Points to keys of the hash. Class is array. 
		adding_disk = @towers[users_move[1]]	

		unless adding_disk.last == nil 
			if (removing_disk).last < (adding_disk).last
				adding_disk.push((removing_disk).pop) #changing_disks(height, users_move)
			else 
				puts "Try another array in the format [2, 3]: "
			end 
		else 
			adding_disk[0] = (removing_disk).pop
		end
		puts @towers
		if users_move == 'q'
			break
		end 
	end 
end 

puts "Let's play Tower of Hanoi! Remember you can quit by entering 'q'. Enter the height of the tower: " 
height = gets.chomp.to_i

setting_height(height) 