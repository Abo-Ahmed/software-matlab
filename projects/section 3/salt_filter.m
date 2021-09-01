 

a = imread('cameraman.tif');

f = imnoise(a , 'salt & pepper');
 
imshow(a);
figure
imshow(f);
