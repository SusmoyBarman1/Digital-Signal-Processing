function Xk = dft_function(xn,N)
L = length(xn);

if(N<L)
    error('N should always be grater than or equal to L');
end;
xn = [xn zeros(1,N-L)];
for k=0:N-1
    for n=0:N-1
        Wn = exp(-j*2*pi*k*n/N);
        X1(k+1,n+1) = Wn;
    end;
end;

Xk = X1*xn'