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

