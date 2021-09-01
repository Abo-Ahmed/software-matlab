function H = hpfilt(type,M,N,D0,n)
Hlp = lpfilter(type,M,N,D0,n);
H = 1 - Hlp;
end