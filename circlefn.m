function [ x , y ] = circlefn( r ) 
%******************************************************************
% CIRCLEFN – Function to draw a circle of radius r.
% File written by Mohan.S on 18-02-2010.
% Call syntax: [ x , y ] = circlefn ( r ) ; or just : circle ( r );
% Input: r = specified radius
% Output: [ x , y ] = the x- and y- coordinates of data points
%******************************************************************
theta = linspace ( 0 , 2 * pi , 100 ) ; % creates vector theta
x = r * cos ( theta ) ;	         % generates x – coordinates
y = r * sin ( theta ) ;		         % generates y – coordinates
plot ( x , y ) ;		         % plot the circle
axis ( 'equal' ) ;		         % sets equal scale on axes
title ('Circle of radius r=',num2str(r))  % put a title with the value of r.
end