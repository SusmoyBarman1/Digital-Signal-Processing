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

subplot(2,2,1);
stem(x,y);
xlabel('n');
ylabel('y(n)');
title('Unit Step Sequence');

for i=1:10
    if x(i)>=0;
        z(i) = 1;
    else
        z(i) = 0;
    end;
end;

subplot(2,2,2);
stem(x,z);
xlabel('n');
ylabel('z(n)');
title('Unit Step Sequence');

for i=1:7
    m(i) = y(i+3) * z(i);
end;

subplot(2,2,3);
stem(x,m);
xlabel('n');
ylabel('m(n)');
title('y(x) * z(x) = y(x)');

 