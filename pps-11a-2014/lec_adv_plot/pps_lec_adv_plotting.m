% Command  		Description
	% ==================================================
	 plot 		% 2D line plot
	 plotyy 	% 2D line plot, y-axes both sides
	 loglog		% 2D line plot: x- and y-axis log scale
	 semilogx 	% 2D line plot, x-axis log, y-axis linear
	 semilogy 	% 2D line plot, x-axis linear, y-axis log
	 errorbar 	% Error bars along 2D line plot
	 fplot 		% Plot function between specified limits
	 ezplot 	% Function plotter
	 ezplot3 	%2D parametric curve plotter
	% ==================================================
	 bar, barh 	% Vertical, horizontal bar graph
	 bar3, bar3h% Vertical, horizontal 3D bar graph
	 hist 		% Histogram
	 histc 		% Histogram bin count (no plot)
	 rose 		% Angle histogram
	 pareto 	% Pareto chart
	 area 		% Filled area 2D plot
	 pie, pie3 	% 2D, 3D pie chart
	% =================================================
	% 3D Plots
	% =================================================
	plot3 		% 3D line plot
	
	
%2D grid: 
	[X,Y] = meshgrid(x,y) 
		X(i,:)= x % for all i
		Y(:,j)= y % for all j
		X(:,i)= x(i) % for all i
		Y(j,:)= y(j) % for all j
 % 3D grid:
	[X,Y,Z] = meshgrid(x,y,z)
		X(i,:,k)= x % for all i, k
		Y(:,j,k)= y % for all j, k
		Z(i,j,:)= z % for all i, j
		X(:,i,:)= x(i) % for all i,
		Y(j,:,:)= y(j) % for all j
		Z(:,:,k)= z(k) % for all k	
%===============================================================
% adv_plotting_in_class.m
%===============================================================
% Multiple y-axes
	[ax,h1,h2]=plotyy(X1,Y1,X2,Y2)
% Plot X1, Y1 using left axis and X2, Y2 using right axis
	[ax,h1,h2]=plotyy(X1,Y1,X2,Y2, ' function' )
% Plot X1, Y1 using left axis and X2 , Y2 using right axis with plotting 
	%function defined by string ' function'
	[ax,h1,h2]=plotyy(X1,Y1,X2,Y2, ' f1' , ' f2' )
% Plot X1, Y1 using left axis with plotting function ' f1' and X2 , Y2 using
%	right axis with plotting function ' f2'
% Error plots
	h = errorbar(X,Y,E)
% Create 2D line plot from data X, Y with symmetric error bars defined by E
	h = errorbar(X,Y,L,U)
%===============================================================
clear; format short e
x = [ 1  3;...
      2  4];
y = [ 5  6;...
      7  8];
z = [ 9 12;...
     10 11]
meshc(x, y, z)
xlabel('x'); ylabel('y'); zlabel('z');
axis equal; axis([1 6 5 9 9 12])
%====================================
x = [x [ 5;  6]];
y = [y [ 5;  9]];
z = [z [12; 12]];
meshc(x, y, z)
xlabel('x'); ylabel('y'); zlabel('z');
axis equal; axis([1 6 5 9 9 12])
%===================================================================
[x, y] = meshgrid(-2:1:2, -1:.25:1)
[x, y] = meshgrid(-2:1:2, -1:.25:1);
z = x + y;
meshc(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
title('z = x + y');	
%===================================================================
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
