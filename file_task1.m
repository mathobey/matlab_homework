T = readtable('fileExcel.xlsx')
Roles = unique(T{:,2})
Names = {}
for k=1:length(Roles)
    Names = [Names; {char.empty}]
end
for k=1:size(T,1)
    x = T{k,2}{1,1}
    y = T{k,1}{1,1}
    for i=1:length(Roles)
        if strcmp(x,Roles{i,1})
            Names{i,1}=[Names{i,1} y '; ']
        end
    end
end
writecell([{'Роли'}, {'Люди'}; Roles, Names], 'outFile.xlsx')