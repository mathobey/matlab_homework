a = 2;
b = 3;
c = 5;
d = 7;
x = [-5:0.5:5];
y = x;
[X,Y] = meshgrid(x,y);
Z = -(a*X+b*Y+d)/c;
mesh(X,Y,Z);
title('Exercise 1');
%%
a = 1;
x = [-5:0.1:5];
y = x;
[X,Y] = meshgrid(x,y);
Z = sin(X.^2+Y.^2)./(X.^2+Y.^2);
mesh(X,Y,Z);
title('Exercise 2.a');
%%
a = 1;
x = [-5:0.1:5];
y = x;
[X,Y] = meshgrid(x,y);
Z = -X.*sin(X) - Y.*cos(Y);
mesh(X,Y,Z);
title('Exercise 2.b');
%%
a = 1;
x = [-5:0.1:5];
y = x;
[X,Y] = meshgrid(x,y);
Z = a*X.*exp(-X.^2-Y.^2);
mesh(X,Y,Z);
title('Exercise 3.a.mesh');
%%
a = 1;
c = 1;
u = [-2:0.05:2];
v = [0:0.05:2*pi];
[U,V] = meshgrid(u,v);
X = a*cosh(U).*cos(V);
Y = a*cosh(U).*sin(V);
Z = c*sinh(U);
mesh(X,Y,Z);
title('Exercise 3.b.surf');
%%
R = 3;
a = 2;
b = 1;
phi = [0:0.05:2*pi];
nu = [0:0.05:5];
[Phi,Nu] = meshgrid(phi,nu);
X = (a + R*sin(Phi)).*cos(Nu);
Y = (a + R*sin(Phi)).*sin(Nu);
Z = R*cos(Phi)+b*Nu;
surfc(X,Y,Z);
title('Exercise 3.m.surfc');
%%
a = 2*pi;
x = [-1:0.02:1];
y = x;
[X, Y] = meshgrid(x,y);
R = sqrt(X.*X + Y.*Y);
f = (2*besselj(1,a*R(:))./R(:)).^2;
mesh(X,Y,reshape(f,size(X)));
title('Exercise 4');
%%
a=[0:0.02:4*pi];
t=[0:0.02:1];
x1=cos(a);
y1=sin(a);
z1=a;
x2=-cos(a);
y2=-sin(a);
z2=a;
hold on;
plot3(x1,y1,z1);
plot3(x2,y2,z2);
for k = 0:31
    b=k*4*pi/31;
    x3=(a/(2*pi)-1)*cos(b);
    y3=(a/(2*pi)-1)*sin(b);
    z3 = a*0+b;
    plot3(x3,y3,z3);
end
hold off
%% Однополостный гиперболоид
u = linspace(-5,5,50);
v = linspace(0,2*pi,50);
[U V] = meshgrid(u,v);
X = cos(V)+U.*cos(V+pi/2);
Y = sin(V)+U.*sin(V+pi/2);
Z = U;
surf(X,Y,Z,'FaceAlpha',0.5);
hold on;
for k=0:11
    a = pi*(2*k+1)/12;
    x = cos(a)+ u*cos(a+pi/2);
    y = sin(a)+ u*sin(a+pi/2);
    z = u;
    plot3(x,y,z);
    hold on;
end
hold off;
%% График вращения
f = @(t) sin(t);
round_surf(f,-4,4,40);
%% Линейчатый график
x_1 = @(t) cos(t);
y_1 = @(t) sin(t);
z_1 = @(t) 0;
x_2 = @(t) cos(t+pi/2);
y_2 = @(t) sin(t+pi/2);
z_2 = @(t) 1;
ruled_surf(x_1,y_1,z_1,x_2,y_2,z_2,-3,3,0,2*pi,40);
%%
function p = round_surf(f,a,b,n);
t = linspace(a,b,n);
v = linspace(0,2*pi,n);
[T V] = meshgrid(t,v);
X = T;
Z = cos(V).*f(T);
Y = sin(V).*f(T);
p = mesh(X,Y,Z);
end
%%
function p = ruled_surf(x_1,y_1,z_1,x_2,y_2,z_2,a,b,c,d,n);
u = linspace(a,b,n);
v = linspace(c,d,n);
[U V] = meshgrid(u,v);
X = x_1(V) + U.*x_2(V);
Y = y_1(V) + U.*y_2(V);
Z = z_1(V) + U.*z_2(V);
p = mesh(X,Y,Z);
end
