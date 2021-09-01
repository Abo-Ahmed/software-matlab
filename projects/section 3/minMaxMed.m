

g = ordfilt2(f ,5 ,ones(5,5) );

%or we can use

g = medfilt2(f , [3 3]);
