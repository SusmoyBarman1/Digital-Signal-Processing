% Here is an error

x=[2,-1,3,7,1,2,-3];
y=[1,-1,2,-2,4,1,-2,5];
y_len = length(y);
x_len = length(x);

r = zeros(1,50);

shift=0;
l=8;
mul=1;
sum=0;
while l<15
    iter = 1;
    while iter <= x_len
        if iter-shift < 1
            mul = x(iter) * 0;
        else
            mul = x(iter) * y(iter-shift);
        end;
        sum = mul + sum;
        iter = iter + 1;
    end;
    shift = shift + 1;
    r(l)=sum;
    sum = 0;
    l = l + 1;
end;
    
shift=-1;
l = 7;
mul=1;
sum=0;
while l>0
    iter = 1;
    while iter <= x_len
        if iter-shift > y_len
            mul = x(iter) * 0;
        else
            mul = x(iter) * y(iter-shift);
        end;
        sum = mul + sum;
        iter = iter + 1;
    end;
    shift = shift - 1;
    r(l) = sum;
    sum = 0;
    l = l - 1;
end;      

i=1;
while i<15
    disp(r(i));
    i = i + 1; 
end;
    

