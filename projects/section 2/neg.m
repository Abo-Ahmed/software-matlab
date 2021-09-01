
F = imread('work.png');
%converting it to gray
g = rgb2gray(F);
h = 255 - g;

%or we can use
imshow(imcomplement(F));