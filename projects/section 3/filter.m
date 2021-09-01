 

f = imread('coins.png');

%function takes the filter type and returns matrix of filter type
w = fspecial('average' , [9 9]);

% or we can use
% w = ones(3,3) * (1/9);
% w = (1/16)* [ 2 2 2 , 2 4 2 , 2 2 2];
g = imfilter(f,w);
imshow(f);
figure
imshow(g);