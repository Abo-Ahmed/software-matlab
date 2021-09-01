
%F = imread('work.png');
%F = imread('pout.tif');
%converting it to gray
%g = rgb2gray(F);

F = [ 0 1 0 
2 1 5 
3 7 6 
0 4 2 ];
F = F / 256;

h = imhist(F);
plot(h);


%to make image more clear
%we can make contrast stretching or equalization
%equalization ==> is not controlled by user
%contrast stetching  ==> is controlled because it has specific scale 
figure
gg = histeq(F);
hh =  imhist(gg);
plot(hh);
gg = ceil ( gg * 256 ) ;


%figure
%imshow(F);
%figure
%imshow(gg);

