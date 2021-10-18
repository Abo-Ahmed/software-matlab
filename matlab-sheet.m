
% Use this sybol for comments.
% no data types definitions - matlab is dynamic typing
% semi-colon after any command hides the result form screen

% general operations
clear % clears the variables values
clear varName % clears the specified value
whos % returns data about all your variables
clc % clears command window
save 'file.mat'    % save variables to file.mat 
load 'file.mat'   % load variables from file.mat 
help command   % quick help on a given command
doc command    % extensive help on a given command

% mathematical operations
pi % mathimatical constant with value 3.14 
3^7 % compute 3 to the 7th power
sqrt(-5)  % compute the square root of –5
exp(12)   % compute e12
log(3) % log10(100)  compute the natural log (ln) and base-10 log  (log10)
abs(-5)  % compute the absolute value |–5| sin(5*pi/3)  compute the sine of 5π/3 besselj(2,6) compute the Bessel function  J2(6)

% string operations
% string is in single quotation
z(5) % returns the character 5 in string z 

% Defining/changing variables:
x = 3     % define variable x to be 3
x = [1 2 3]    % set x to the row-vector (1,2,3)
x = [1;2;3]    % set x to the column-vector (1,2,3)
x = [1 2 3]; % same, but dont echo x to output
x = [ 1  5 2 ] % to define matrix 
x(2) = 7  % change x from (1,2,3) to (1,7,3)
x = 1:9 % from 1 to 9 
x = [1:9:2] % from 1 to 9 with step 2
x = [1:9 , 1:3 ] % two periods in our matrix
x = [ 2 2 3 ; 1 2 3 ] % semi-colon to separate between rows
x (: , 1) % targeting the first row in the matrix
x(2:12)   % the 2nd to the 12th elements of x 
x(2:end)  % the 2nd to the last elements of x 
x(1:3:end) % every third element of x, from 1st to the last 
x(:)    % all the elements of x
A(5,:)   % the row vector of every element in the 5th row of A 
A(5,1:3)  %  the row vector of the first 3 elements in the 5th row of A 
A(:,2)   %  the column vector of every element in the 2nd column of A 
diag(A)   %  column vector of the diagonal elements of A

% Arithmetic and functions of vectors and matrices:
x * 3  % multiply every element of x by 3
x + 2  % add 2 to every element of x
x + y  % element-wise addition of two vectors x and y
A * y  % product of a matrix A and a vector y
x .* y % element-wise product of vectors x and y A^3     the square matrix A to the 3rd power x^3     not allowed if x is not a square matrix!
x.^3 % every element of x is taken to the 3rd power
z' % transpose of the matrix z with ' sign
x .* y %  cross product
x ./ y %  cross division
cos(x) % the cosine of every element of x  
abs(A) % the absolute value of every element of A 
exp(A) % e to the power of every element of A
sqrt(A)  % the square root of every element of A
expm(A)  % the matrix exponential eA
sqrtm(A) % the matrix whose square is A
x.', A.' % the transposes of x and A
x', A'   % the complex-conjugate of the transposes of x and A

% To get summation of two dimension matrices  
sum (sum (c))
sum (c (:)) % or use this as sum of two-dimension matrix gives us the sum of the columns 
Mean2 (c) % gives us the average of two-dimension matrix 
Stdw (c)  % gives us the standard deviation of two dimension matrix  

% To concatenate two matrices 
X = [ c b] % where c and b are two matrices of the same size ( row-based operation)
x = [ c b ] % column-based operation

rand() % return random number
randn() % return positive or negative number
rand(n) % return n X n random
ones(n , m ) % return matrix n X m of ones
zeros(n , m ) % return matrix n X m of zeroes
eye(5)    % a 5 identity matrix I (“eye”)
eye(12,4) % a 12 matrix whose first 4 rows are the 4 x 4 identity

% script file
% new mat lab file >> script
% file that take parameters or return it is function
% the file should be .m meta type
% function call example
[ f , u ]  = add ( 5, 9 )

% loops
-6 : 5. : 6 % from 6 to 6 with step .5
for i = 1:9 % loop from i = 1 to i = 9
 
% Solving linear equations:
A \ b   %  for A a matrix and b a column vector, the solution x to Ax=b
inv(A)  %  the inverse matrix A–1

% Plotting:
plot(y)  % plot y as the y axis, with 1,2,3,… as the x axis 
plot(x,y) % plot y versus x (must have same length)  
loglog(x,y)  % plot y versus x on a log-log scale
semilogx(x,y) % plot y versus x with x on a log scale

plot (  x , y , ‘.’)  % this dot so keep relation in points only
title ‘your name’ % add a title A Title at the top of the plot
xlabel('blah')     % label the x axis as blah
ylabel('blah') % label the y axis as blah 
figure    % open up a new figure window

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
a = imread('cameraman.tif'); % reading image

% image filter example  
f= imread('test.png');
w = fspecial('laplacian');
g = imfilter(f,w);
% we subtract original image from edged image to get sharpened one
z = f - g; 
imshow(f);
figure
imshow(z);


% function example in *.m file
function H = hpfilt(type,M,N,D0,n)
Hlp = lpfilter(type,M,N,D0,n);
H = 1 - Hlp;
end


% switch case and for loop example

    switch type
     
    case 'ideal'
        for i = 1 : M
        for j = 1 :N
           D = sqrt((i-L1).^2 + (j-L2).^2);
           H(i,j) =double(D<=D0);
        end
        end
        
   
     case 'btw'
        for i = 1 : M
        for j = 1 :N
           D = sqrt((i-L1).^2 + (j-L2).^2);
           H(i,j) = 1/(1 + (D/D0).^(2*n));
        end
        end
        
     case 'gauss'
        for i = 1 : M
        for j = 1 :N
           D= sqrt((i-L1).^2 + (j-L2).^2);
            H(i,j) = exp(-(D^2)/(2*(D0^2)));
        end
        end
    otherwise
     error('Unknown filter type')


% class example
classdef trialClass
    %TRIALCLASS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        i 
        j
    end
    
    methods(Static )
        function [ i j ] = addFunc( x , y )
        %ADDFUNC Summary of this function goes here
        %   Detailed explanation goes here

        i = x * y;  
        j = x / y;

        end

    end
    
end
