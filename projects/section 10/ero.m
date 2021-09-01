

% erotion decreaces object  size and separate between them
% but increase halls

bw = imread ('circles.png');

% structure element
% it can be circle , sphere and rectangle
se = strel('disk',17);

%b = imerode(bw , se);

% for opening
%b = imopen(bw,se);
b = imclose(bw,se);

imshow(bw);
figure
imshow(b);