N = 10;

x = [-5 -4 -3 -2 -1 0 1 2 3 4];
n=-5:1:N-6;

for i=1:10
    if x(i)==0;
        y(i) = 1;
    else
        y(i) = 0;
    end;
end;

stem(x,y);
xlabel('n');
ylabel('y(n)');
title('Unit Step Sequence'); 