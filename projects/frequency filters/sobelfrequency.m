
  
  f = im2double(imread('house.tif'));
[m,n]=size(f);
F = fft2(f, m, n);

w =[-1,-2,-1;0,0,0;1,2,1];
 H=ifftshift(freqz2(w,n,m));

G=ifft2(H.*F);
g = real(G); 

imshow(f);
title('Original Image');
  figure,imshow(g);
  title('Filtered image');
 

