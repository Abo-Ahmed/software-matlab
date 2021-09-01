
f = imread('pout.tif');
g = fft2(f);


%to shift fourier transform to get low in center
d = fftshift(g);

%to get rid of imaginary part of transform
sp = abs(d);

% to make compresion we apply log
j = log(1+double(sp));

n = mat2gray(j);
imshow(n);
figure
imshow(f);