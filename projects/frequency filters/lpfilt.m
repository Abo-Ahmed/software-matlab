function H = lpfilt(type,M,N,D0,n)
    
    L1 = round(M/2); 
    L2 = round (N/2);

    H = zeros(M,N);   
    
           
    switch type
	
    case 'ideal'
        for i = 1 : M
        for j = 1 :N
           D = sqrt((i-L1).^2 + (j-L2).^2);
           H(i,j) =double(D<=D0);
        end
        end
        
   
	case 'btw'
        for i = 1 : M
        for j = 1 :N
           D = sqrt((i-L1).^2 + (j-L2).^2);
		 H(i,j) = 1/(1 + (D/D0).^(2*n));
        end
        end
        
	case 'gauss'
        for i = 1 : M
        for j = 1 :N
           D= sqrt((i-L1).^2 + (j-L2).^2);
            H(i,j) = exp(-(D^2)/(2*(D0^2)));
        end
        end
    otherwise
	error('Unknown filter type')
           
           
           
    
   end
       
        
        
end
