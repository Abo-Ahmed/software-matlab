

F = imread('work.png');
%converting it to gray
g = rgb2gray(F);
figure   %figure opens new window for drawing
%subplot  ( // number  of rows , num of cols , its place number)
imshow(g)