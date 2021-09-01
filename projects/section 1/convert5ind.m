


s = load('trees');
imshow(s.X, s.map);
figure;
rgb = ind2rgb(s.X, s.map);
imshow(rgb);