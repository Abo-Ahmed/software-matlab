

F = imread('work.png');
%converting it to gray
%[X,map] = rgb2ind(RGB, n)
% n is the number of colors you want in image
% it takes most common n colors and approxiamte the others

[ X , map] = rgb2ind(F, 5);

%subplot  ( // number  of rows , num of cols , its place number)
imshow(F)
figure   %figure opens new window for drawing
imshow(X, map);