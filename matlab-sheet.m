
% Use this sybol for comments.
% no data types definitions - matlab is dynamic typing
% semi-colon after any command hides the result form screen

% general operations
clear % clears the variables values
clear varName % clears the specified value
whos % returns data about all your variables
clc % clears command window
pi % mathimatical constant with value 3.14 

% string operations
% string is in single quotation
z(5) % returns the character 5 in string z 

% matrix operations
x = [ 1  5 2 ] % to define matrix 
x = 1:9 % from 1 to 9 
x = [1:9:2] % from 1 to 9 with step 2
x = [1:9 , 1:3 ] % two periods in our matrix
x = [ 2 2 3 ; 1 2 3 ] % semi-colon to separate between rows
x (: , 1) % targeting the first row in the matrix
z' % transpose of the matrix z with ' sign
x .* y %  cross product
x ./ y %  cross division

rand() % return random number
randn() % return positive or negative number
rand(n) % return n X n random
ones(n , m ) % return matrix n X m of ones
zeros(n , m ) % return matrix n X m of zeroes

% script file
% new mat lab file >> script
% file that take parameters or return it is function
% the file should be .m meta type
% function call example
[ f , u ]  = add ( 5, 9 )


% loops
-6 : 5. : 6
from 6 to 6 with step .5
for i = 1:9
loop from i = 1 to i = 9


% plotting matrix 
plot (  x , y , ‘.’)  % this dot so keep relation in points only
title ‘your name’
xlabel ‘ x coordinating names’

% To display the red and blue points related to each class:
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)
plot(ctrs(:,1),ctrs(:,2),'kx',...
     'MarkerSize',12,'LineWidth',2)
plot(ctrs(:,1),ctrs(:,2),'ko',...
     'MarkerSize',12,'LineWidth',2)
legend('Cluster 1','Cluster 2','Centroids',...
       'Location','NW')

% in images 
x (:,:,1 ) % the first plane or RGB planes of the image

