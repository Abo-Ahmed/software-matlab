
F = imread('me.jpg');
r = F(:,:,3);
h = imhist(r);
plot(h);
figure
imshow(r);


