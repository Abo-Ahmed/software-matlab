


f= imread('cameraman.tif');

g = edge (f, 'prewitt' , 'vertical');
% 'vertical' or 'horizontal' or 'both'

imshow(f);
figure
imshow(g);