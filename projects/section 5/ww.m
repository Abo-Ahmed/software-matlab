

f= imread('me.jpg');
 

%f = imread('cameraman.tif');

% w gets the horizontal and w' gets the vertical



w = [   ;  ;  ];
g = imfilter (f, w);
w = w';
z = imfilter (f, w);
% to get all the edges we sum all the two filter
g = g + z ;
w = fspecial('average' , [9 9]);
g = imfilter(g,w);

w = fspecial('average' , [9 9]);
g = imfilter(g,w);

imshow (f)
figure 
imshow(g)

