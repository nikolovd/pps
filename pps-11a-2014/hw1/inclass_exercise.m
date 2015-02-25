% Exercises 
%Plot the following functions
	% 3D graphs 
	% Fences 
	z = 0.75 / exp(( x * 5) ^ 2 *( y * 5) ^ 2 )
	% Mosque Dome
	z = 0.7 / log(x ^ 2 + y ^ 2) + 0.6
	% Saddler
	z  = x^2 - y^2
	
	% Quivers
	% Field y' = 0.1 * (10 – y) * y –1
	t = 0:?:20
	y = -1:?:12
	slope = (1/10)*(10-y).*y - 1;
	% Newton law of cooling y’ = (0.01) * (70 – y) 
	t = 0:?:400
	y = 0:?:210
	slope = (.01)*(70-y) ;
