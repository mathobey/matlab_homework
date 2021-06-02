function a_kek = two_rows(a)
if ndims(a) == 2 && size(a,1) == 2
    a_kek = a;
else
    a_kek = zeros(size(a));
    disp('Массив должен быть двумерным и иметь две строки!!1!11!!!!1!');
end