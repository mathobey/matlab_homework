%% exercise 1
f = @(x) 1 + x*sin(x);
a = 0;
b = 7;
h = 0.0001;
eps = 0.0001;
iter = 10000;
fplot(f,[a b]);
x_0 = ginput(1);
answer1 = newton(f,x_0(1),h,iter,eps)
answer2 = popolam(f,x_0(1),a,b,eps,iter)
%% exercise 2
f = @(x) sin(x)/x;
a = 0;
b = 7;
h = 0.0001;
eps = 0.0001;
iter = 10000;
fplot(f,[a b]);
x_0 = ginput(1);
answer1 = newton(f,x_0(1),h,iter,eps)
answer2 = popolam(f,x_0(1),a,b,eps,iter)
%% exercise 3
f = @(x) 1 + (1+sin(x)-cos(x))^2 - (sin(2*x)-cos(2*x)-0.2)^2;
a = 0;
b = 7;
h = 0.0001;
eps = 0.0001;
iter = 10000;
fplot(f,[a b]);
x_0 = ginput(1);
answer1 = newton(f,x_0(1),h,iter,eps)
answer2 = popolam(f,x_0(1),a,b,eps,iter)