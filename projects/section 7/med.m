

f = imread('cameraman.tif');
g=imnoise(f , 'salt & pepper',0.2);
%0.2 is the ratio of hte nooise in the image


h = medfilt2(g,[ 3 3 ]);

imshow(g);
figure
imshow(h);