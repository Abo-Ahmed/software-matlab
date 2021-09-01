

f = imread ('cameraman.tif');

w1 = [-1 -1 -1; 2 2 2 ; -1 -1 -1 ];


% because some elements may negative value 
% we need to take the absolute of it

g = imfilter(f , w1);
g = abs(g);


imshow(f);
figure
imshow(g);