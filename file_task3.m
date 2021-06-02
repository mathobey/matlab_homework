T = readtable('Data_18032020.xlsx');
[y m d] = ymd(T{:,3});
date_table = [y m d];
[cy cm cd] = ymd(datetime('now'));
current_date_table = ones(size([y m d]))*diag([cy cm cd]);
diff = current_date_table - date_table;
age = zeros(length(diff),1);
for k=1:length(age)
    if diff(k,2)<0 
        age(k,1) = diff(k,1)-1;
    elseif diff(k,2)==0 && diff(k,3)<0
        age(k,1) = diff(k,1)-1;
    else
        age(k,1) = diff(k,1);
    end;
end
age = [{'Возраст'}; num2cell(age)];
koef = T{:,6}./T{:,7};
for k=1:length(koef)
    if koef(k,1)>0.5 
        koef(k,1)=1;
    elseif koef(k,1)>0.4
        koef(k,1)=0.8;
    elseif koef(k,1)>0.3
        koef(k,1)=0.6;
    elseif koef(k,1)>0.2
        koef(k,1)=0.4;
    elseif koef(k,1)>0.1
        koef(k,1)=0.2;
    else 
        koef(k,1)=0.1;
    end
end
koef = [{'Коэффициент'}; num2cell(koef)];
C = [[{'Фамилия'} {'Имя'} {'дата рождения'} {'id1'} {'id2'} {'Кол-во авторов внутренних'} {'Кол-во всего авторов'} {'Публикация'};table2cell(T)] age koef];
writecell(C,'edited_Data.xlsx');