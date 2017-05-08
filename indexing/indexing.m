%% Vectors
% Linear indexing 
v = [16 5 9 4 2 11 7 14]

v(3)  						% Extract the third element
v([1 5 6])      			% Extract the first, fifth, and sixth elements
v(3:7)     					% Extract the third through the seventh elements
v2 = v([5:8 1:4])   		% Extract and swap the halves of v
v(end)    					% Extract the last element
v(5:end)  					% Extract the fifth through the last elements   
v(2:end-1)	     			% Extract the second through the next-to-last elements
v(1:2:end)   				% Extract all the odd elements
v(end:-1:1)  		 		% Reverse the order of elements
v([2 3 4]) = [10 15 20]   	% Replace some elements of v
v([2 3]) = 30   			% Replace second and third elements by 30

% Logical Indexing
v(v >= 7)
v(v >= 7 && v < 12)

% NaN remove
z = [ 10 NaN 1 NaN 3 -4 NaN pi NaN]'
nanZ = isnan(z)
whos nanZ
nanD

nonNaNZ = z(~nanZ)

%% Matrix Indexing

% Two Subscripts
A = magic(4)
A(2,4)  				% Extract the element in row 2, column 4
A(2:4,1:2)
A(3,:)   				% Extract third row
A(:,end)   				% Extract last column

% Linear Indexing
A(14)
A([6 12 15])
A([2 4],[3 2])
idx = sub2ind(size(A), [2 3 4], [1 2 4]) %converts row and column subscripts to linear indices
A(idx)

% Logical Indexing

A(A > 12)

% Combine techniques
Data = rand(10,5)

extractD = Data(Data(:,1)>=0.8,[1 2 5])
