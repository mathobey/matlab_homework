function f = blocks(n,m)
A = ones(n,m);
B = zeros(n,m);
f = [A B; B A];
