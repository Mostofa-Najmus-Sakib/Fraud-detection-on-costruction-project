function [Dep_typo_fraud_counter] = Dep_Typo_fraud_counter(pay_affect_dep,Result_Dep)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


xyz_major = strcmp(pay_affect_dep.Major_MinorEffect, {'Major'});
major_cell_all = pay_affect_dep(xyz_major,:);
major_cell = table2cell(major_cell_all(:,1));
major_cell = major_cell';

data_amount_major = table;
for y  = 1:length(major_cell)
%     disp(major_cell(y))
    dep_data_z_38 = Result_Dep(strcmp(Result_Dep.Cell,cell2mat(major_cell(y))),:);
    
    data_amount_major = [data_amount_major;dep_data_z_38];
    
    data_amount_major_typo_index = strcmp(data_amount_major.Var_error, {'Typo'});
    
    data_amount_major_typo = data_amount_major(data_amount_major_typo_index,:);
    
    data_amount_major_fraud_index = strcmp(data_amount_major.Var_error, {'Fraud'});
    
    data_amount_major_fraud = data_amount_major(data_amount_major_fraud_index,:);
    
    Dep_major_typo_fraud  = [height(data_amount_major), height(data_amount_major_typo), height(data_amount_major_fraud)];
end



xyz_moderate = strcmp(pay_affect_dep.Major_MinorEffect, {'Moderate'});
moderate_cell_all = pay_affect_dep(xyz_moderate,:);
moderate_cell = table2cell(moderate_cell_all(:,1));
moderate_cell = moderate_cell';

data_amount_moderate = table;
for y  = 1:length(moderate_cell)
%     disp(major_cell(y))
    dep_data_z_38_moderate = Result_Dep(strcmp(Result_Dep.Cell,cell2mat(moderate_cell(y))),:);
    
    data_amount_moderate = [data_amount_moderate;dep_data_z_38_moderate];
    
    data_amount_moderate_typo_index = strcmp(data_amount_moderate.Var_error, {'Typo'});
    
    data_amount_moderate_typo = data_amount_moderate(data_amount_moderate_typo_index,:);
    
    data_amount_moderate_fraud_index = strcmp(data_amount_moderate.Var_error, {'Fraud'});
    
    data_amount_moderate_fraud = data_amount_moderate(data_amount_moderate_fraud_index,:);
    
    Dep_moderate_typo_fraud  = [height(data_amount_moderate), height(data_amount_moderate_typo), height(data_amount_moderate_fraud)];
end

xyz_minor = strcmp(pay_affect_dep.Major_MinorEffect, {'Minor'});
minor_cell_all = pay_affect_dep(xyz_minor,:);
minor_cell = table2cell(minor_cell_all(:,1));
minor_cell = minor_cell';

data_amount_minor = table;
for y  = 1:length(minor_cell)
%     disp(major_cell(y))
    dep_data_z_38_minor = Result_Dep(strcmp(Result_Dep.Cell,cell2mat(minor_cell(y))),:);
    
    data_amount_minor = [data_amount_minor;dep_data_z_38_minor];
    
    data_amount_minor_typo_index = strcmp(data_amount_minor.Var_error, {'Typo'});
    
    data_amount_minor_typo = data_amount_minor(data_amount_minor_typo_index,:);
    
    data_amount_minor_fraud_index = strcmp(data_amount_minor.Var_error, {'Fraud'});
    
    data_amount_minor_fraud = data_amount_minor(data_amount_minor_fraud_index,:);
    
    Dep_minor_typo_fraud  = [height(data_amount_minor), height(data_amount_minor_typo), height(data_amount_minor_fraud)];
end

Dep_typo_fraud_counter = [Dep_major_typo_fraud,Dep_moderate_typo_fraud,Dep_minor_typo_fraud ];

end

