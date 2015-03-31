function rush = rush_hour_simulator (red_steps, green_steps, starting_traffic, cycles_left)
	
	
	res_vector = []
	vector_index = 1
	
	traffic = starting_traffic

	
	cycle_length = red_steps + green_steps
	
	
	while(cycles_left > 0)
	
		left_steps_of_cycle = cycle_length
		
		while(left_steps_of_cycle > 0)
			tmp = 0
			for i = 1:10
				tmp2 = rand(1)
				if(tmp2 >= 0.7)
					tmp +=1
				endif
			endfor
			traffic += tmp;
			
			left_steps_of_cycle -= 1;
			
			res_vector(vector_index) = traffic;
			vector_index +=1;
			
		
			if(left_steps_of_cycle <= green_steps)
				traffic -= 8;
			endif
		endwhile
		
		cycles_left -= 1;
	endwhile
	
	rush = res_vector

endfunction

rush = rush_hour_simulator (5, 2, 11, 2);
plot(rush)
