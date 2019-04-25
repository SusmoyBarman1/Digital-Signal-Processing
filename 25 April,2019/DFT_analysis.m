clc;
clear all;
close all;

xn = input('Enter the sequence: ');
N = input('Enter the value of N: ');
Xk = dft_function(xn,N);

k = 0:N-1;
subplot(2,1,1)
stem(k,abs(Xk))
xlabel('k')
ylabel('|Xk|')
title('Magnitude Plot')

subplot(2,1,2)
stem(k,angle(Xk))
xlabel('k')
ylabel('angle(Xk)')
title('Phase  Plot')