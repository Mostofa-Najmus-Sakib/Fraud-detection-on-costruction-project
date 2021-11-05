function [final_result_dep] = ITD_dep_major(dep_data,pay_affect_dep,pay_affect_dens)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
%%
%major_cell = pay_affect.Major_MinorEffect == 'Major';
%major_cell = {'$Z$61' , '$Z$63'};

% xyz = strcmp(pay_affect_dep.Major_MinorEffect, {'Major'});

major_cell_dep = pay_affect_dep(:,:);
major_cell_dep_2 = table2cell(major_cell_dep(:,1));
major_cell_dep_3 = major_cell_dep_2;

major_cell_dep_dens = pay_affect_dens(:,:);
major_cell_dep_dens_2 = table2cell(major_cell_dep_dens(:,1));
major_cell_dep_dens_3 = major_cell_dep_dens_2;

% major_cell_all = pay_affect_dep(:,:);
% major_cell = table2cell(major_cell_all(:,1));
% major_cell = major_cell';

major_cell_all_4 = {[major_cell_dep_3; major_cell_dep_dens_3]};
major_cell_all_5 = major_cell_all_4{1,1};
major_cell = major_cell_all_5';

final_result_major = [];
for y  = 1:length(major_cell)
     disp(major_cell(y))
    dep_data_z_38{y} = dep_data(strcmp(dep_data.Var1,cell2mat(major_cell(y))),:);
    
    for k = 1:length(dep_data_z_38)
        x= cell2table(dep_data_z_38(k));
        
    end

    test =table2array( x); % sample number cell
    x4 = test(1,1);
    x5 = x4{1,1}(:,:);
    sizex5 = size(x5);
 
    if sizex5(2) < 4
        continue
    end
  
    test =table2array( x5(:,4)); % sample number cell

    [C,ia,ic] = unique(test,'stable');  % finds the repetating values
    a_counts = accumarray(ic,1); % cpounts the number of repetation
    T = table(C, a_counts); % repetation and corresponding variables

%     hist(ic,unique(ic)) % plot of repetation of each variable
%     xticklabels(C) % specifying the name of the variables in the y axis

    h = table2cell(x5);
    %kk = str2double(h(:,4));
    kkk = h(:,4); %sample number cell

    [Aaaa, abbb, accc] = uniquecell(kkk); %uniquecell to search the repetation
    [q0,q1,q2] = unique(accc,'stable'); 
    % stable keeps the data sequence in the same format of the original data 
   
    if length(q2) == 0
         
         continue
         
    end
    
    q2 = q2';
    % [a1,a2,a3] = unique(q2,'stable');
    edges = min(q2) :1: (max(q2)+1); % range of sample values to plot the histogram
    [counts, values] = histcounts(q2, edges); %counts number of values in each bin
    repeatedElements = values(counts >= 2);
    %selecting only those values that has been repetated more than once

    if length(repeatedElements) == 0
         
         continue
         
    end
    
    
    indexes = [];
    for k = 1 : length(repeatedElements)
        indexes = [indexes, find(q2 == repeatedElements(k))]; 
    % selecting all the repetated cell indexes
    end
    main_duplicate = [];
    single_row = [];
    test1 = [];
    for i = 1:length(repeatedElements)
        cell_number_2 = [];
        cell_number_3 = [];
        for j =1:length(indexes)
            if(repeatedElements(i)==q2(indexes(j))) 
                %searching for only the repetated ones in the main indexed
                    %variable column (q2 in this case)
                cell_number_1  = (x5(indexes(j),1));
                cell_number_2  = x5(indexes(j),2);
                cell_number_3  = x5(indexes(j),3);
                cell_number_4  = (x5(indexes(j),4));
                single_row = [single_row;cell_number_4,cell_number_1,cell_number_2,cell_number_3];
            end
        end
    end

single_row.Properties.VariableNames{1} = 'Sample'; 
single_row.Properties.VariableNames{2} = 'Cell';
single_row.Properties.VariableNames{3} = 'Value';
single_row.Properties.VariableNames{4} = 'Time';


%disp(dep_data_z_38(39,2))
disp(single_row);
%comb_repeat = [];

%empty_cell = {'Nan','Nan','Nan','Nan'};
% empty = table(empty_cell);

%final_result = [single_row]
final_result_major= [ final_result_major;   single_row];

final_result_dep = final_result_major;

end
end

