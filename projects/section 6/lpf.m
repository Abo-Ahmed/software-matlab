
 


f= imread('pout.tif');
g = fft2(f);
F = fftshift(g);
[m,n] = size(f);
depth = 1;
filter = lpfilter('btw',m , n, depth,0.6);
%m and n is size of image
%lpfilter types ideal gauss or Btw
%filter = lpfilter('ideal',m , n, depth,o);
%btw method takes order as additional parameter

% then we multiply the filter in the forries of the image

G = F .* filter;

%.* because we multiply each elemenet with its peer one

%  we get to the spatial domian again
j = ifft2(G);

% we remove the imaginary part
g = abs(j);

imshow(f)
figure
imshow(g)

