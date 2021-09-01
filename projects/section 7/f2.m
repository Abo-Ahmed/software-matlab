

% imnoise2 take two argumenta pepper and salt ratios
% the returned function of imnoise2 is matrix 
% contains 1 , 0.5 , 0
% 0 --> pepper
% 1 --> salt
% 0.5 --> leave pixel as it's

f = imread ('cameraman.tif');
[m , n ] = size(f);

r = imnoise2('salt & pepper',m,n,0.1,0.1);
% last two values should there sum does not exceed 1
% last two values are pepper and salt ratios

g = f ;
g(r==0) = 0;
g(r==1) = 255;

imshow(f);
figure
imshow(g);