%% exercise 1.a
a = 0;
b = 2*pi;
u = 0.1;
f = @(x) exp(-u*x^2)*cos(x^2);
fplot(f,[a b]);
xr = ginput(2);
[x_m y_m] = fminbnd(f,xr(1,1),xr(2,1))
%% exercise 1.b
a = 0;
b = 2*pi/3;
a_1 = 2;
b_1 = 3;
f = @(x) 1/(a_1*cos(x)+b_1*sin(x))^2;
fplot(f,[a b]);
xr = ginput(2);
[x_m y_m] = fminbnd(f,xr(1,1),xr(2,1))
%% exercise 2.a (график экстремумов)
g = @(x,y) x^y*log(x);
a = linspace(0,20,10000);
extr = zeros(0,10000);
for k=1:10000
    f = @(x) g(x,a(k));
    extr(k) = fminbnd(f,0,1);
end
plot(a,extr);
%% exercise 2.c (ой тут прикольно вообще)
g = @(x,a,b) x^a*(1-x)^b;
a_1 = linspace(0,10,100);
b_1 = linspace(0,10,100);
[A B] = meshgrid(a_1,b_1);
for i=1:100
    for j=1:100
        f = @(x) g(x,A(i,j),B(i,j));
        Extr(i,j) = fminbnd(f,0,1);
    end
end
mesh(A,B,Extr);
