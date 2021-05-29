%exercise 2
P = [1, 0.1, 0.2, -0.2, -2, 1];
r = roots(P);
m = max(abs(r));
real_r = double.empty(1,0);
for k = 1:5
    if imag(r(k)) == 0 && real(r(k)) < m
        real_r = [real_r r(k)];
    end
end
%Вывод корней на промежутке
real_r
x = (-m/2 - 2): 0.01: (m/2 + 2);
f = polyval(P,x);
plot(x,f);
hold on;
ff = polyval(polyder(P), m/2);
y = polyval(P, m/2) +ff*(x - m/2);
plot(x,y);
hold on;
ff1 = polyval(polyder(P), -m/2);
t = 0:0.01:1;
x1 = -m/2 + ff1*t;
y1 = polyval(P, -m/2) - t;
plot(x1,y1);
hold off;
%Последний пункт задания не корректен, потому что три корня лежат на одной
%прямой, а следовательно через них нельзя провести окружность
%%
%exercise 4.1
P = [1 -2 6 -10 16];
x = 4;
f = 0;
for k=1:size(P,2)
    f = x*f + P(k);
end
f
PP = polyder(P);
f = 0;
for k=1:size(PP,2)
    f = x*f + PP(k);
end
f
%%
%exercise 4.2
P = [1 1+2i 0 -1-3i 0 7];
x = -2-i;
f = 0;
for k=1:size(P,2)
    f = x*f + P(k);
end
f
%%
%exercise 5
n = 4;
f = double.empty(1,0);
for k=2*n:-1:0
    if k == 2*n
        f = [f, 1];
    elseif k == n+1
        f = [f, -n];
    elseif k == n-1
        f = [f, n];
    elseif k == 0
        f = [f, -1];
    else
        f = [f,0];
    end
end
f
r = roots(f); 
rr = unique(r)
rrr = nonzeros(real(r));
x = linspace(min(rrr),max(rrr),10000);
plot(x,polyval(f,x));
%%
%exercise 6.1
syms x;
b_sym = x^2;
a_sym = (x-1)*(x+2)*(x+3);
B = sym2poly(b_sym);
A = sym2poly(a_sym);
[r,p,K] = residue(B,A);
f = simplify(0*x);
for i=1:size(r)
    f = f + r(i)/(x-p(i));
end;
f + poly2sym(K,x)
%%
%exercise 6.3
syms x;
b_sym = 3+x;
a_sym = (x-1)*(x^2+1);
B = sym2poly(b_sym);
A = sym2poly(a_sym);
[r,p,K] = residue(B,A);
f = simplify(0*x);
for i=1:size(r)
    f = f + r(i)/(x-p(i));
end;
f + poly2sym(K,x)
%%
%exercise 6.3
syms x;
b_sym = x^2;
a_sym = x^4 - 1;
B = sym2poly(b_sym);
A = sym2poly(a_sym);
[r,p,K] = residue(B,A);
f = simplify(0*x);
for i=1:size(r)
    f = f + r(i)/(x-p(i));
end;
f + poly2sym(K,x)
%%
%exercise 7.1
n = 4;
x = [];
y = [];
for k=1:n
    x = [x k];
    y = [y 1/k];
end
syms t;
f = 0;
for i=1:n
    l = 1;
    for j=1:n
        if ~(j==i)
            l=l*(t - x(j))/(x(i) - x(j));
        end
    end
    f = f + y(i)*l;
end
f
P = sym2poly(f)
r = roots(P);
rrr = nonzeros(real(r));
m = min(rrr)-1;
M = max(rrr)+1;
x_1 = linspace(m,M,10000);
plot(x_1,polyval(P,x_1));
%%
%exercise 7.2
x = [-1 0 1 2 3];
y = [6 5 0 3 2];
n = 5;
syms t;
f = 0;
for i=1:n
    l = 1;
    for j=1:n
        if ~(j==i)
            l=l*(t - x(j))/(x(i) - x(j));
        end
    end
    f = f + y(i)*l;
end
f
P = sym2poly(f)
r = roots(P);
rrr = nonzeros(real(r));
rrr = [rrr;0]
m = min(rrr);
M = max(rrr);
x_1 = linspace(m,M,10000);
plot(x_1,polyval(P,x_1));