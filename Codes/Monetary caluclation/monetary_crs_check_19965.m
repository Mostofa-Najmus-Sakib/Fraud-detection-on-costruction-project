%% dept
[~,~,raw2] = xlsread('Dep_value_all_corrected_19965_1st') ;  

%%
% cont
[~,~,raw2] = xlsread('last_typo_first_fraud_cont_19965') ;    
% [t1, t2, t3] = xlsread('ITD0777_7')
%data = raw([1 13],:); 
%%
% u32 = data(2).('$Z$129');
filenametest = 'ITD0777_19965_D1000.xlsx';   %%% change value on each run 

f6 = {'=IF(N129="","",IF(Z133="",IF(Z132="",IF(Z131="",IF(Z130="",Z129,Z130),Z131),Z132),Z133))'};
xlswrite(filenametest, f6, '0777', 'N131')

Label_1 = raw2(1,:);
param_1 = raw2(:,1);
param2_1 = string(param_1);
isSix = cellfun(@(x)isequal(x,'D(1)'),param2_1); %%% change value on each run D(15) for dept, QC(15) for contractor 
[row,~] = find(isSix);

key = raw2(1,2:end);
value = raw2(row,2:end);
comb = containers.Map(key,value);

for i = 1:length(key)
   
    xx = comb(key{i});
    a = convertCharsToStrings(key{i});
    [newStr,] = split(a,["$"]);
    newStr2 = join(newStr,"");
   
    if length(xx)>1;
        disp('screwed!')
        break
    end
    %filenametest = 'ITD0777_19965_D3.xlsx';
     if strcmp(newStr2, "Z39");
        disp("Here")
     end
    if isnumeric(xx);
        xlswrite(filenametest, xx, '0777', newStr2)
    end
    
end

xlswrite(filenametest, 2.656, '0777', 'BB29')
xlswrite(filenametest, 2.578, '0777', 'BB33')
xlswrite(filenametest, 1.0310, '0777', 'BB41')


xlswrite(filenametest, 3, '0777', 'BG56')
xlswrite(filenametest, 5, '0777', 'BJ56')

xlswrite(filenametest, 14, '0777', 'BG58')
%xlswrite(filenametest, 2.677, '0777', 'BJ58')

xlswrite(filenametest, 65, '0777', 'BG60')
xlswrite(filenametest, 75, '0777', 'BJ60')

xlswrite(filenametest, 3.8, '0777', 'BG62')
xlswrite(filenametest, 6.8, '0777', 'BJ62')

xlswrite(filenametest, 0.6, '0777', 'BG64')
xlswrite(filenametest, 1.2, '0777', 'BJ64')


f1 = {'=IF(OR(U37="",U38=""),"",SUM(U37-U38))'};
xlswrite(filenametest, f1, '0777', 'U39')

f2 = {'=IF(OR(Z37="",Z38=""),"",SUM(Z37-Z38))'};
xlswrite(filenametest, f2, '0777', 'Z39')

f3 = {'=IF(OR(U34="",U39=""),"",SUM(U34/(U34-U39)))'};
xlswrite(filenametest, f3, '0777', 'U40')

f4 = {'=IF(OR(Z34="",Z39=""),"",SUM(Z34/(Z34-Z39)))'};
xlswrite(filenametest, f4, '0777', 'Z40')

f5 = {'=IF(OR(U40="",Z40=""),"",AVERAGE(U40,Z40))'};
xlswrite(filenametest, f5, '0777', 'U41')

% =IF(N129="","",IF(Z133="",IF(Z132="",IF(Z131="",IF(Z130="",Z129,Z130),Z131),Z132),Z133))



% xlswrite(filenametest, 2275.3, '0777', 'Z37') 
% xlswrite(filenametest, 1356.3, '0777', 'Z38')
% xlswrite(filenametest, 2254, '0777', 'U37')
% xlswrite(filenametest, 1338.8, '0777', 'U38') 

isSix2 = cellfun(@(x)isequal(x,'$Z$37'),Label_1);
[~,col2] = find(isSix2);
xlswrite(filenametest, raw2{row,col2}, '0777', 'Z37') 

isSix3 = cellfun(@(x)isequal(x,'$Z$38'),Label_1);
[~,col3] = find(isSix3);
xlswrite(filenametest, raw2{row,col3}, '0777', 'Z38') 

isSix4 = cellfun(@(x)isequal(x,'$U$37'),Label_1);
[~,col4] = find(isSix4);
xlswrite(filenametest, raw2{row,col4}, '0777', 'U37') 

isSix5 = cellfun(@(x)isequal(x,'$U$38'),Label_1);
[~,col5] = find(isSix5);
xlswrite(filenametest, raw2{row,col5}, '0777', 'U38')

% xlswrite(filenametest, 1528.4, '0777', 'N131') 

% z129 = comb('$Z$129'); 
% 
% a = convertCharsToStrings(key{1,1})
% [newStr,matches] = split(a,["$"])
% newStr2 = join(newStr,"")
% 
% filenametest = 'ITD0777_1.xlsx';
% xlswrite(filenametest, z129, '0777', newStr2)




















