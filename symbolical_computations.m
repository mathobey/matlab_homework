%exercise 1.a
syms x;
a = [1,4,-2,-14,-3,-18];
f = poly2sym(a,x);
factor(f)
%%
%exercise 1.b
syms x y;
f = x^3 + x^2*y + x^2 - 2*x*y^2 + x*y - 2*y^2;
factor(f)
%%
%exercise 2.1
syms x;
f = x*exp(-x);
limit(f,inf)
%%
%exercise 2.5
syms x h;
f = (sqrt(x+h) - sqrt(x))/h;
limit(f,h,0)
%%
%exercise 3.1
syms x;
f = (atan(x))/2 - x/(2*(1+x^2)^2);
simplify(diff(f,x))
%%
%exercise 3.2
syms x;
simplify(diff(poly2sym([3,-14,12,24,6],x)))
%%
%exercise 4.1
syms x;
f = sqrt(1 - x^2)/x^2;
int(f,x)
%%
%exercise 4.7
syms x;
f = log(sin(x));
int(f,x,0,pi/2)
%%
%exercise 5.1
syms n;
f = 1/n^2;
symsum(f,n,1,inf)
%%
%exercise 5.2
syms x k;
f = 1/(x - k)^3;
symsum(f,k,-inf,inf)
%%
%exercise 6.1
syms x;
f = exp(x);
a = 0;
n = 5;
p = taylor(f,x,a)
ezplot(f,-3,3);
hold on;
ezplot(p,-3,3);
hold off;
%%
%exercise 6.2
syms x;
f = (sin(x))^2;
a = 0;
n = 10;
p = taylor(f,x,'Order',10)
ezplot(f,-3,3);
hold on;
ezplot(p,-3,3);
hold off;
%%
%exercise 8
syms x;
f = (sin(x))/(x^2+1);
ff = simplify(diff(f))
solve(ff)