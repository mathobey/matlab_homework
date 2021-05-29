x = [-10:0.05:10];
y = x + 1./(x.*x);
plot(x, y);
grid on;
title('Exercise 1')
%%
x = [-10:0.05:10];
y = 2*x./(1+x.*x);
plot(x, y);
grid on;
title('Exercise 2')
%%
x = [-1:0.01:1];
y = (x-2).*sqrt((1+x)./(1-x));
plot(x,y);
grid on;
title('Exercise 3')
%%
x = [-10:0.05:10];
y = log(x.*x - 4);
plot(x,y);
grid on;
title('Exercise 4')
%%
x = [-10:0.05:10];
y = sqrt(sin(pi*sqrt(x)));
plot(x,y);
grid on;
title('Exercise 5')
%%
x = [-10:0.05:10];
y = (x + abs(x)).*sqrt(x.*sin(pi*x).^2);
plot(x,y);
grid on;
title('Exercise 6')
%%
x = [-10:0.05:10];
y = x.*sin(pi*x);
plot(x,y);
grid on;
title('Exercise 7')
%%
a = 100;
b = 2;
k = 14;
m = 2;
n = 4;
phi = [-pi/2:0.01:3*pi/2];
r = a*(b - sin(k*phi) - cos(m*phi))./(a + (phi - pi/2).^n);
polarplot(phi,r);
grid on;
title('Exercise 8')
%%
n = 2;
m = 3;
a = 5;
phi = [0:0.01:2*m*pi];
x = (1 + n/m)*cos((n\m).*phi) - (a*n/m)*cos((1+n/m)*phi);
y = (1 + n/m)*sin((n\m).*phi) - (a*n/m)*sin((1+n/m)*phi);
plot(x,y);
grid on;
title('Exercise 9')
%%
a = 2;
b = 3;
n = 3;
m = 5;
phi_0 = pi/6;
phi = [0:0.01:2*n*m*pi];
x = a*sin(n*phi+phi_0);
y = b*sin(m*phi);
plot(x,y);
grid on;
title('Exercise 10')
%%
t = [-5:0.01:5];
a = 1/2;
b = 1/3;
m = 7;
n = 17;
x = cos(t) + a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
plot(x,y);
grid on;
title('Exercise 11')
%%
t = [-5:0.01:5];
a = 1/4;
b = 1/16;
m = 8;
n = 8;
s = 7;
x = cos(t) - a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
hold on
for k = 1:s
    plot(x/k,y/k);
end;
grid on;
title('Exercise 12')
%%
k = 3/5;
phi = [0:0.05: 2*pi/k];
a = 10;
ro = a*sin(k*phi);
polarplot(phi,ro);
grid on;
title('Exercise 14, Grandi Rose')
%%
k = 18/5;
phi = [0:0.01:20*pi];
x = (k-1)*cos(phi) + cos((k-1)*phi);
y = (k-1)*sin(phi) + sin((k-1)*phi);
plot(x,y);
grid on;
title('Exercise 14, Hypocycloid')

    





