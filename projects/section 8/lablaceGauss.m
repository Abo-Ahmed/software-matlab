

f= imread('cameraman.tif');
 

%f = imread('cameraman.tif');

% w gets the horizontal and w' gets the vertical



w = [ 0  0  -1 0 0 ; 0 -1 -2 -1 0 ; -1 -2 16 -2 -1 ; 0 -1 -2 -1 0 ; 0  0  -1 0 0 ];

g = imfilter (f, w);
w = [   -1  -1  -1  ;   -1 8 -1  ;  -1 -1 -1   ];
g1 = imfilter (f, w);


imshow (f)
figure 
imshow(g)
figure 
imshow(g1)


% we can do all of this in one step by this
%g = edge (f, 'sobel');
