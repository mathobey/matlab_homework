%exercise 1
A = rand(4,3);
B = rand(3,4);
A_3 = A(1:3,1:3)
B_3 = B(1:3,1:3)
det(A_3*B_3)
%%
%exercise 2
n = 5;
a = rand(n,1);
b = rand(1,n);
a*b
b*a
det(a*b)
%%
%exercise 3
A = rand(5,3);
B = rand(2,3);
C = [A zeros(5,2);B eye(2)]
C(:,5)
%%
%exercise 4
A = rand(6,3);
B = A(1:3,1:3);
if det(B)~=0
    A(1:3,1:3) = inv(B);
    C = A*B;
    C(1:3,1:3)
end
%%
%exercise 5
A = rand(3,5)
B = A(1:3,1:3)
det(B)
A(1,:) = 0
B = A(1:3,1:3)
det(B)
%%
%exercise 6
A = rand(20,20);
b = eig(A);
[b sort(b)]
%%
%exercise 7
A = rand(4,4);
[V,D] = eig(A);
V;
d = diag(D)';
for k=1:4
    d(k);
    v = V(:,k);
    [v d(k)*v A*v]
end
%%
%exercise 8
n = 8;
D = -2*diag(ones(1,n))+diag(ones(1,n-1),1)+diag(ones(1,n-1),-1)+diag(ones(1),n-1)+diag(ones(1),1-n)
%%
%exercise 9
A = rand(8)
MaxA = max(max(A))
MaxColA = max(A)'
MaxRowA = max(A')'
for i=1:8
    for j=1:8
        if A(i,j)>0.2 
            [i j]
        end
    end
end


