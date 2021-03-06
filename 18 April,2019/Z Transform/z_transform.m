clc
clear all

% Without Function
x=[1 3 5 7 9];
x_len = length(x);

%Output signal will have no of symbol as that in input
X=0; %Initialize output

z=sym('z'); %defining symbol
for i=0:x_len-1
    X = X+x(i+1)*z^(-i);
end;

disp('displaying output');
disp(X);

z = ztrans(X);
disp(z);