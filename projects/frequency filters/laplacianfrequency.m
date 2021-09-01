f = im2double(imread('pout.tif'));


[m,n]=size(f);
F = fft2(f, m, n);

w=[0,1,0;1,-4,1;0,1,0];
H=ifftshift(freqz2(w,n,m));

G=ifft2(H.*F);
g = real(G); 



imshow(f);
title('Original Image');
  figure,imshow(g);
  title('Laplacian Filtered');