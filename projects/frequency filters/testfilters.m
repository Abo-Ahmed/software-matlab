f=imread('test.tif'); 
    
    F = fftshift(fft2(f));
    [M,N]=size(f);
     D0=40;
     
     
   H=1-lpfilter('gauss',M,N,D0);   % high pass filter
    
    G= F.*H;         % It's a multiplication element-by-element, used for arrays or matrices
    g=abs(ifft2(G));
   
     
 figure(1)  
  subplot(1, 2, 1);
  imshow(f)
  title('Original Image')
 
  subplot(1, 2, 2);
  imshow(g)
  title('filtered image')

