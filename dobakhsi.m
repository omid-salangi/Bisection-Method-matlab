clc;
clear;
close all;
format long

syms x;
f = input('enter your function :' , 's');
f = evalin(symengine, f);
a = input('enter min interval : ');
b = input('enter max interval : ');
N = 20 ;
for i = 1:N
    xn = (a+b)/2;
    if subs(f,x,a)*subs(f,x,xn) < 0
        b = xn ;
    end
    if subs(f,x,b)*subs(f,x,xn) < 0
        a = xn ;
    end
    temp = subs(f , x , xn);
    fprintf(' N = %d , x = %f , f(x) = %f \n',i , xn , temp);
end