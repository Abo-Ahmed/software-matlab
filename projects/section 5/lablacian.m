

 %f= imread('moon.tif');
 
 
 f= imread('test.png');
 % all lablacian methods can detect edges
 w = fspecial('laplacian');
g = imfilter(f,w);

% we subtract original image from edged image to get sharpened one
z = f - g; 
imshow(f);
figure
imshow(z);

