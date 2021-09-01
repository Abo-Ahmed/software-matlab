

% erotion decreaces object  size and separate between them
% but increase halls

bw = imread ('circles.png');

% for edge detection we can use 
% bwmroph


% structure element
% it can be circle , sphere and rectangle

b = bwmorph(bw,'remove');

imshow(bw);
figure
imshow(b);