function x = popolam(f,x_0,a,b,eps,iter)
if f(x_0) == 0 
    x = x_0;
    return
elseif f(a) == 0 
    x = a;
    return
elseif f(b) == 0 
    x = b;
    return
elseif f(a)*f(x_0) < 0
    x_1 = a;
    x_2 = x_0;
else
    x_2 = b;
    x_1 = x_0;
end
x = x_0;
while iter>0 && abs(f(x))>=eps
    x = (x_1 + x_2)/2;
    iter = iter - 1;
    if f(x) == 0
        break
    elseif f(x_1)*f(x) < 0
        x_2 = x;
    else
        x_1 = x;
    end
end
