function x = newton(f,x_0,h,iter,eps)
x = x_0;
while iter>0 && abs(f(x))>=eps
    x = x - h*f(x)/(f(x+h)-f(x));
    iter = iter - 1;
end