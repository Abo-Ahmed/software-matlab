

f= imread('me.png');
 

%f = imread('cameraman.tif');

% w gets the horizontal and w' gets the vertical



w = [  -1 -2 -1 ; 0 0 0 ; 1 2 1 ];
g = imfilter (f, w);
w = w';
z = imfilter (f, w);
% to get all the edges we sum all the two filter
g = g + z ;
g = g+f;
imshow (f)
figure 
imshow(g)


% we can do all of this in one step by this
%g = edge (f, 'sobel');
