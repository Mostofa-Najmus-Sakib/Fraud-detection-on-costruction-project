function [final_table_dep_dens_corrected] = Value_check_dep(raw,raw_3)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

final_table = table;
Dens_table = table;
final_table_dens = table;

Label = raw(1,:)';
uu = string(Label);
param = raw(:,1);
param2 = string(param);
s2 = param2;

param_ori = raw_3(1,:)';
param2_ori = string(param_ori);

idx_param_dep = strncmpi(param,'D(',2);
para_dep = param(idx_param_dep==1);
s3 = natsort(para_dep);

idx_param_dep_ori = strncmpi(param_ori,'D(',2);
para_dep_ori = param_ori(idx_param_dep_ori==1);
s5 = natsort(para_dep_ori);


%[num_3,txt_3,raw_3] = xlsread('Dep_Result_with_missing_values') ;
Label_3 = raw_3(1,2:end)';
Label_4 = string(Label_3);
C_transposed = raw_3';

Label4 = C_transposed(1,:)';
uu4 = string(Label4);
param3 = C_transposed(:,1);
param4 = string(param3);
s4 = param4;


% rt = Label_3(1,1)
% rt2 = strrep()

for i=1:length(s5) %% if we want the test name D(1), D(2) from audit file s3 would be used
                   % s5 is also test name but it comes from reported values, so even if a test
                   % for example D(5) is missing in audit file it comes
                   % from reported file and values for that missing test are also picked 
    
    s1 = s5{i};
    tf = strcmp(s1,s2);
    D1 = raw(tf,:)';
    
    if isempty(D1)==1
        [r1,c1] = size(D1);
        D1 = cell(r1,c1+1);
        empties = cellfun('isempty',D1);
        D1(empties) = {NaN};
    end
    
    
    D1_First = [Label, D1];
    
    tf2 = strcmp(s1,s4);
    D2 = C_transposed(tf2,:)';
    D2_First = [Label4, D2];
    
    idx_u32 = find(contains(uu,'$U$32'));
    u32 = D1_First{idx_u32,2};
    u32_nan = isnan(u32);
    
    if u32_nan ==1
        idx_u32_2 = find(contains(uu4,'$U$32'));
        u32_2 = D2_First{idx_u32_2,2};
        u32_nan_2 = isnan(u32_2); 
        if u32_nan_2 == 1            
            D1_First{idx_u32,2} = [];
        else
            D1_First{idx_u32,2} = u32_2;
        end
    end
    
    
    idx_u33 = find(contains(uu,'$U$33'));
    u33 = D1_First{idx_u33,2};
    u33_nan = isnan(u33);
    
    if u33_nan ==1
        idx_u33_2 = find(contains(uu4,'$U$33'));
        u33_2 = D2_First{idx_u33_2,2};
        u33_nan_2 = isnan(u33_2); 
        if u33_nan_2 == 1            
            D1_First{idx_u33,2} = [];
        else
            D1_First{idx_u33,2} = u33_2;
        end
    end
    
    
    idx_z32 = find(contains(uu,'$Z$32'));
    z32 = D1_First{idx_z32,2};
    z32_nan = isnan(z32);
    
    if z32_nan ==1
        idx_z32_2 = find(contains(uu4,'$Z$32'));
        z32_2 = D2_First{idx_z32_2,2};
        z32_nan_2 = isnan(z32_2); 
        if z32_nan_2 == 1            
            D1_First{idx_z32,2} = [];
        else
            D1_First{idx_z32,2} = z32_2;
        end
    end
    
    idx_z33 = find(contains(uu,'$Z$33'));
    z33 = D1_First{idx_z33,2};
    z33_nan = isnan(z33);
    
    if z33_nan ==1
        idx_z33_2 = find(contains(uu4,'$Z$33'));
        z33_2 = D2_First{idx_z33_2,2};
        z33_nan_2 = isnan(z33_2); 
        if z33_nan_2 == 1            
            D1_First{idx_z33,2} = [];
        else
            D1_First{idx_z33,2} = z33_2;
        end
    end
    
    
    idx_u37 = find(contains(uu,'$U$37'));
    u37 = D1_First{idx_u37,2};
    u37_nan = isnan(u37);
    
    if u37_nan ==1
        idx_u37_2 = find(contains(uu4,'$U$37'));
        u37_2 = D2_First{idx_u37_2,2};
        u37_nan_2 = isnan(u37_2); 
        if u37_nan_2 == 1            
            D1_First{idx_u37,2} = [];
        else
            D1_First{idx_u37,2} = u37_2;
        end
    end
    
    idx_u38 = find(contains(uu,'$U$38'));
    u38 = D1_First{idx_u38,2};
    u38_nan = isnan(u38);
    
    if u38_nan ==1
        idx_u38_2 = find(contains(uu4,'$U$38'));
        u38_2 = D2_First{idx_u38_2,2};
        u38_nan_2 = isnan(u38_2); 
        if u38_nan_2 == 1            
            D1_First{idx_u38,2} = [];
        else
            D1_First{idx_u38,2} = u38_2;
        end
    end
    
    idx_z37 = find(contains(uu,'$Z$37'));
    z37 = D1_First{idx_z37,2};
    z37_nan = isnan(z37);
    
    if z37_nan ==1
        idx_z37_2 = find(contains(uu4,'$Z$37'));
        z37_2 = D2_First{idx_z37_2,2};
        z37_nan_2 = isnan(z37_2); 
        if z37_nan_2 == 1            
            D1_First{idx_z37,2} = [];
        else
            D1_First{idx_z37,2} = z37_2;
        end
    end
    
    idx_z38 = find(contains(uu,'$Z$38'));
    z38 = D1_First{idx_z38,2};
    z38_nan = isnan(z38);
    
    if z38_nan ==1
        idx_z38_2 = find(contains(uu4,'$Z$38'));
        z38_2 = D2_First{idx_z38_2,2};
        z38_nan_2 = isnan(z38_2); 
        if z38_nan_2 == 1            
            D1_First{idx_z38,2} = [];
        else
            D1_First{idx_z38,2} = z38_2;
        end
    end
    
    idx_u61 = find(contains(uu,'$U$61'));
    u61 = D1_First{idx_u61,2};
    u61_nan = isnan(u61);
    
    if u61_nan ==1
        idx_u61_2 = find(contains(uu4,'$U$61'));
        u61_2 = D2_First{idx_u61_2,2};
        u61_nan_2 = isnan(u61_2); 
        if u61_nan_2 == 1            
            D1_First{idx_u61,2} = [];
        else
            D1_First{idx_u61,2} = u61_2;
        end
    end
    
    idx_u62 = find(contains(uu,'$U$62'));
    u62 = D1_First{idx_u62,2};
    u62_nan = isnan(u62);
    
    if u62_nan ==1
        idx_u62_2 = find(contains(uu4,'$U$62'));
        u62_2 = D2_First{idx_u62_2,2};
        u62_nan_2 = isnan(u62_2); 
        if u62_nan_2 == 1            
            D1_First{idx_u62,2} = [];
        else
            D1_First{idx_u62,2} = u62_2;
        end
    end
    
    idx_u63 = find(contains(uu,'$U$63'));
    u63 = D1_First{idx_u63,2};
    u63_nan = isnan(u63);
    
    if u63_nan ==1
        idx_u63_2 = find(contains(uu4,'$U$63'));
        u63_2 = D2_First{idx_u63_2,2};
        u63_nan_2 = isnan(u63_2); 
        if u63_nan_2 == 1            
            D1_First{idx_u63,2} = [];
        else
            D1_First{idx_u63,2} = u63_2;
        end
    end
    
    idx_z61 = find(contains(uu,'$Z$61'));
    z61 = D1_First{idx_z61,2};
    z61_nan = isnan(z61);
    
    if z61_nan ==1
        idx_z61_2 = find(contains(uu4,'$Z$61'));
        z61_2 = D2_First{idx_z61_2,2};
        z61_nan_2 = isnan(z61_2); 
        if z61_nan_2 == 1            
            D1_First{idx_z61,2} = [];
        else
            D1_First{idx_z61,2} = z61_2;
        end
    end
    
    idx_z62 = find(contains(uu,'$Z$62'));
    z62 = D1_First{idx_z62,2};
    z62_nan = isnan(z62);
    
    if z62_nan ==1
        idx_z62_2 = find(contains(uu4,'$Z$62'));
        z62_2 = D2_First{idx_z62_2,2};
        z62_nan_2 = isnan(z62_2); 
        if z62_nan_2 == 1            
            D1_First{idx_z62,2} = [];
        else
            D1_First{idx_z62,2} = z62_2;
        end
    end
    
    idx_z63 = find(contains(uu,'$Z$63'));
    z63 = D1_First{idx_z63,2};
    z63_nan = isnan(z63);
    
    if z63_nan ==1
        idx_z63_2 = find(contains(uu4,'$Z$63'));
        z63_2 = D2_First{idx_z63_2,2};
        z63_nan_2 = isnan(z63_2); 
        if z63_nan_2 == 1            
            D1_First{idx_z63,2} = [];
        else
            D1_First{idx_z63,2} = z63_2;
        end
    end
    
    idx_s111 = find(contains(uu,'$S$111'));
    s111 = D1_First{idx_s111,2};
    s111_nan = isnan(s111);
    
    if s111_nan == 1
        idx_s111_2 = find(contains(uu4,'$S$111'));
        s111_2 = D2_First{idx_s111_2,2};
        s111_nan_2 = isnan(s111_2); 
        if s111_nan_2 == 1            
            D1_First{idx_s111,2} = [];
        else
            D1_First{idx_s111,2} = s111_2;
        end
    end
    
    idx_s112 = find(contains(uu,'$S$112'));
    s112 = D1_First{idx_s112,2};
    s112_nan = isnan(s112);
    
    if s112_nan == 1
        idx_s112_2 = find(contains(uu4,'$S$112'));
        s112_2 = D2_First{idx_s112_2,2};
        s112_nan_2 = isnan(s112_2); 
        if s112_nan_2 == 1            
            D1_First{idx_s112,2} = [];
        else
            D1_First{idx_s112,2} = s112_2;
        end
    end
    
    idx_s114 = find(contains(uu,'$S$114'));
    s114 = D1_First{idx_s114,2};
    s114_nan = isnan(s114);
    
    if s114_nan == 1
        idx_s114_2 = find(contains(uu4,'$S$114'));
        s114_2 = D2_First{idx_s114_2,2};
        s114_nan_2 = isnan(s114_2); 
        if s114_nan_2 == 1            
            D1_First{idx_s114,2} = [];
        else
            D1_First{idx_s114,2} = s114_2;
        end
    end
    
    idx_s116 = find(contains(uu,'$S$116'));
    s116 = D1_First{idx_s116,2};
    s116_nan = isnan(s116);
    
    if s116_nan == 1
        idx_s116_2 = find(contains(uu4,'$S$116'));
        s116_2 = D2_First{idx_s116_2,2};
        s116_nan_2 = isnan(s116_2); 
        if s116_nan_2 == 1            
            D1_First{idx_s116,2} = [];
        else
            D1_First{idx_s116,2} = s116_2;
        end
    end
    
    idx_ap114 = find(contains(uu,'$AP$114'));
    ap114 = D1_First{idx_ap114,2};
    ap114_nan = isnan(ap114);
    
    if ap114_nan == 1
        idx_ap114_2 = find(contains(uu4,'$AP$114'));
        ap114_2 = D2_First{idx_ap114_2,2};
        ap114_nan_2 = isnan(ap114_2); 
        if ap114_nan_2 == 1            
            D1_First{idx_ap114,2} = [];
        else
            D1_First{idx_ap114,2} = ap114_2;
        end
    end
    
 
    idx_ap115 = find(contains(uu,'$AP$115'));
    ap115 = D1_First{idx_ap115,2};
    ap115_nan = isnan(ap115);
    
    if ap115_nan == 1
        idx_ap115_2 = find(contains(uu4,'$AP$115'));
        ap115_2 = D2_First{idx_ap115_2,2};
        ap115_nan_2 = isnan(ap115_2); 
        if ap115_nan_2 == 1            
            D1_First{idx_ap115,2} = [];
        else
            D1_First{idx_ap115,2} = ap115_2;
        end
    end
    
    idx_n128 = find(contains(uu,'$N$128'));
    n128 = D1_First{idx_n128,2};
    n128_nan = isnan(n128);
    
    if n128_nan == 1
        idx_n128_2 = find(contains(uu4,'$N$128'));
        n128_2 = D2_First{idx_n128_2,2};
        n128_nan_2 = isnan(n128_2); 
        if n128_nan_2 == 1            
            D1_First{idx_n128,2} = [];
        else
            D1_First{idx_n128,2} = n128_2;
        end
    end
    
    idx_n129 = find(contains(uu,'$N$129'));
    n129 = D1_First{idx_n129,2};
    n129_nan = isnan(n129);
    
    if n129_nan == 1
        idx_n129_2 = find(contains(uu4,'$N$129'));
        n129_2 = D2_First{idx_n129_2,2};
        n129_nan_2 = isnan(n129_2); 
        if n129_nan_2 == 1            
            D1_First{idx_n129,2} = [];
        else
            D1_First{idx_n129,2} = n129_2;
        end
    end
    
    try
        idx_z129 = find(contains(uu,'$Z$129'));
        z129 = D1_First{idx_z129,2};
        z129_nan = isnan(z129);
        
        if z129_nan == 1
            idx_z129_2 = find(contains(uu4,'$Z$129'));
            z129_2 = D2_First{idx_z129_2,2};
            z129_nan_2 = isnan(z129_2);
            if z129_nan_2 == 1
                D1_First{idx_z129,2} = [];
            else
                D1_First{idx_z129,2} = z129_2;
            end
        end
    catch
    end
    
    try
        idx_z130 = find(contains(uu,'$Z$130'));
        z130 = D1_First{idx_z130,2};
        z130_nan = isnan(z130);
        
        if z130_nan == 1
            idx_z130_2 = find(contains(uu4,'$Z$130'));
            z130_2 = D2_First{idx_z130_2,2};
            z130_nan_2 = isnan(z130_2);
            if z130_nan_2 == 1
                D1_First{idx_z130,2} = [];
            else
                D1_First{idx_z130,2} = z130_2;
            end
        end
    catch
    end
    
    try
        idx_z131 = find(contains(uu,'$Z$131'));
        z131 = D1_First{idx_z131,2};
        z131_nan = isnan(z131);
        
        if z131_nan == 1
            idx_z131_2 = find(contains(uu4,'$Z$131'));
            z131_2 = D2_First{idx_z131_2,2};
            z131_nan_2 = isnan(z131_2);
            if z131_nan_2 == 1
                D1_First{idx_z131,2} = [];
            else
                D1_First{idx_z131,2} = z131_2;
            end
        end
    catch
    end
    
    try
        idx_z132 = find(contains(uu,'$Z$132'));
        z132 = D1_First{idx_z132,2};
        z132_nan = isnan(z132);
        
        if z132_nan == 1
            idx_z132_2 = find(contains(uu4,'$Z$132'));
            z132_2 = D2_First{idx_z132_2,2};
            z132_nan_2 = isnan(z132_2);
            if z132_nan_2 == 1
                D1_First{idx_z132,2} = [];
            else
                D1_First{idx_z132,2} = z132_2;
            end
        end
    catch
    end
    
    try
        idx_z133 = find(contains(uu,'$Z$133'));
        z133 = D1_First{idx_z133,2};
        z133_nan = isnan(z133);
        
        if z133_nan == 1
            idx_z133_2 = find(contains(uu4,'$Z$133'));
            z133_2 = D2_First{idx_z133_2,2};
            z133_nan_2 = isnan(z133_2);
            if z133_nan_2 == 1
                D1_First{idx_z133,2} = [];
            else
                D1_First{idx_z133,2} = z133_2;
            end
        end
    catch
    end
    
    
    if find(~cellfun(@isempty,D1_First(1,2))) == 1
        D1_First(1,2)= cellstr(s1);
    end
    
    final_table = [final_table, D1_First(:,2)];
   

end


final_table_2 = [D1_First(:,1),  final_table];
final_table_3 = table2array(final_table_2);
final_table_dep = array2table(final_table_3.');

% final_table_4 = final_table_dep(2:end,:)
% final_table_4.Properties.VariableNames = C
% 
% 
% C = final_table_dep.Properties.VariableNames
% Dens_table.Properties.VariableNames = C
% final_table_dep_2 = final_table_dep
% final_table_dep_2.Properties.VariableNames = C
% Dens_table_2 = table2array(Dens_table);
% newtable = vertcat(final_table_4, Dens_table);
% 
% T = join(final_table_4,Dens_table)
% 
% Dens_table_3 = table2array(Dens_table);
% final_table_dep = array2table(final_table_3.');
% 
% 
% 
% final_table_dep_dens = [final_table_4;Dens_table];
% final_table_4.Properties.RowNames = final_table_2.Properties.VariableNames;




%% Density

idx_param_dep_dens = strncmpi(param,'D-DENS(',2);
para_dep_dens = param(idx_param_dep_dens==1);
s3_dens = natsort(para_dep_dens);

idx_param_dep_dens_ori = strncmpi(param_ori,'D-DENS(',2);
para_dep_dens_ori = param_ori(idx_param_dep_dens_ori==1);
s6_dens = natsort(para_dep_dens_ori);



% 
% [num_3,txt_3,raw_3] = xlsread('result') ;
% Label_3 = raw_3(1,2:end)';
% Label_4 = string(Label_3)
% C_transposed = raw_3'
% 
% Label4 = C_transposed(1,:)';
% uu4 = string(Label4);
% param3 = C_transposed(:,1);
% param4 = string(param3);
% s4 = param4;


for i=1:length(s6_dens) %% if we want the test name D-DENS(1) from audit file s3_dens would be used
                   % s6_dens is also test name but it comes from reported values, so even if a test
                   % for example D-DENS(5) is missing in audit file it comes
                   % from reported file and values for that missing test are also picked 
    
    s1_dens = s6_dens{i};
    tf = strcmp(s1_dens,s2);
    D1 = raw(tf,:)';
    
    if isempty(D1)==1
        [r1,c1] = size(D1);
        D1 = cell(r1,c1+1);
        empties = cellfun('isempty',D1);
        D1(empties) = {NaN};
    end
    
    D1_First = [Label, D1];
    
    tf2 = strcmp(s1_dens,s4);
    D2 = C_transposed(tf2,:)';
    D2_First = [Label4, D2];

    try
        idx_ac37 = find(contains(uu,'$AC$37'));
        ac37 = D1_First{idx_ac37,2};
        ac37_nan = isnan(ac37);
        
        if ac37_nan == 1
            idx_ac37_2 = find(contains(uu4,'$AC$37'));
            ac37_2 = D2_First{idx_ac37_2,2};
            ac37_nan_2 = isnan(ac37_2);
            if ac37_nan_2 == 1
                D1_First{idx_ac37,2} = [];
            else
                D1_First{idx_ac37,2} = ac37_2;
            end
        end
    catch
    end
    
    try
        idx_ac38 = find(contains(uu,'$AC$38'));
        ac38 = D1_First{idx_ac38,2};
        ac38_nan = isnan(ac38);
        
        if ac38_nan == 1
            idx_ac38_2 = find(contains(uu4,'$AC$38'));
            ac38_2 = D2_First{idx_ac38_2,2};
            ac38_nan_2 = isnan(ac38_2);
            if ac38_nan_2 == 1
                D1_First{idx_ac38,2} = [];
            else
                D1_First{idx_ac38,2} = ac38_2;
            end
        end
    catch
    end
    
    try
        idx_ac39 = find(contains(uu,'$AC$39'));
        ac39 = D1_First{idx_ac39,2};
        ac39_nan = isnan(ac39);
        
        if ac39_nan == 1
            idx_ac39_2 = find(contains(uu4,'$AC$39'));
            ac39_2 = D2_First{idx_ac39_2,2};
            ac39_nan_2 = isnan(ac39_2);
            if ac39_nan_2 == 1
                D1_First{idx_ac39,2} = [];
            else
                D1_First{idx_ac39,2} = ac39_2;
            end
        end
    catch
    end
    
    try
        idx_ac40 = find(contains(uu,'$AC$40'));
        ac40 = D1_First{idx_ac40,2};
        ac40_nan = isnan(ac40);
        
        if ac40_nan == 1
            idx_ac40_2 = find(contains(uu4,'$AC$40'));
            ac40_2 = D2_First{idx_ac40_2,2};
            ac40_nan_2 = isnan(ac40_2);
            if ac40_nan_2 == 1
                D1_First{idx_ac40,2} = [];
            else
                D1_First{idx_ac40,2} = ac40_2;
            end
        end
    catch
    end
    
    try
        idx_ac41 = find(contains(uu,'$AC$41'));
        ac41 = D1_First{idx_ac41,2};
        ac41_nan = isnan(ac41);
        
        if ac41_nan == 1
            idx_ac41_2 = find(contains(uu4,'$AC$41'));
            ac41_2 = D2_First{idx_ac41_2,2};
            ac41_nan_2 = isnan(ac41_2);
            if ac41_nan_2 == 1
                D1_First{idx_ac41,2} = [];
            else
                D1_First{idx_ac41,2} = ac41_2;
            end
        end
    catch
    end
    
    try
        idx_ac42 = find(contains(uu,'$AC$42'));
        ac42 = D1_First{idx_ac42,2};
        ac42_nan = isnan(ac42);
        
        if ac42_nan == 1
            idx_ac42_2 = find(contains(uu4,'$AC$42'));
            ac42_2 = D2_First{idx_ac42_2,2};
            ac42_nan_2 = isnan(ac42_2);
            if ac42_nan_2 == 1
                D1_First{idx_ac42,2} = [];
            else
                D1_First{idx_ac42,2} = ac42_2;
            end
        end
    catch
    end
    
    try
        idx_ac43 = find(contains(uu,'$AC$43'));
        ac43 = D1_First{idx_ac43,2};
        ac43_nan = isnan(ac43);
        
        if ac43_nan == 1
            idx_ac43_2 = find(contains(uu4,'$AC$43'));
            ac43_2 = D2_First{idx_ac43_2,2};
            ac43_nan_2 = isnan(ac43_2);
            if ac43_nan_2 == 1
                D1_First{idx_ac43,2} = [];
            else
                D1_First{idx_ac43,2} = ac43_2;
            end
        end
    catch
    end
    
    try
        idx_ac44 = find(contains(uu,'$AC$44'));
        ac44 = D1_First{idx_ac44,2};
        ac44_nan = isnan(ac44);
        
        if ac44_nan == 1
            idx_ac44_2 = find(contains(uu4,'$AC$44'));
            ac44_2 = D2_First{idx_ac44_2,2};
            ac44_nan_2 = isnan(ac44_2);
            if ac44_nan_2 == 1
                D1_First{idx_ac44,2} = [];
            else
                D1_First{idx_ac44,2} = ac44_2;
            end
        end
    catch
    end
    
    try
        idx_ac45 = find(contains(uu,'$AC$45'));
        ac45 = D1_First{idx_ac45,2};
        ac45_nan = isnan(ac45);
        
        if ac45_nan == 1
            idx_ac45_2 = find(contains(uu4,'$AC$45'));
            ac45_2 = D2_First{idx_ac45_2,2};
            ac45_nan_2 = isnan(ac45_2);
            if ac45_nan_2 == 1
                D1_First{idx_ac45,2} = [];
            else
                D1_First{idx_ac45,2} = ac45_2;
            end
        end
    catch
    end
    
    try
        idx_ac46 = find(contains(uu,'$AC$46'));
        ac46 = D1_First{idx_ac46,2};
        ac46_nan = isnan(ac46);
        
        if ac46_nan == 1
            idx_ac46_2 = find(contains(uu4,'$AC$46'));
            ac46_2 = D2_First{idx_ac46_2,2};
            ac46_nan_2 = isnan(ac46_2);
            if ac46_nan_2 == 1
                D1_First{idx_ac46,2} = [];
            else
                D1_First{idx_ac46,2} = ac46_2;
            end
        end
    catch
    end
    
    try
        idx_ac47 = find(contains(uu,'$AC$47'));
        ac47 = D1_First{idx_ac47,2};
        ac47_nan = isnan(ac47);
        
        if ac47_nan == 1
            idx_ac47_2 = find(contains(uu4,'$AC$47'));
            ac47_2 = D2_First{idx_ac47_2,2};
            ac47_nan_2 = isnan(ac47_2);
            if ac47_nan_2 == 1
                D1_First{idx_ac47,2} = [];
            else
                D1_First{idx_ac47,2} = ac47_2;
            end
        end
    catch
    end
    
    try
        idx_ac48 = find(contains(uu,'$AC$48'));
        ac48 = D1_First{idx_ac48,2};
        ac48_nan = isnan(ac48);
        
        if ac48_nan == 1
            idx_ac48_2 = find(contains(uu4,'$AC$48'));
            ac48_2 = D2_First{idx_ac48_2,2};
            ac48_nan_2 = isnan(ac48_2);
            if ac48_nan_2 == 1
                D1_First{idx_ac48,2} = [];
            else
                D1_First{idx_ac48,2} = ac48_2;
            end
        end
    catch
    end
    
    try
        idx_ac49 = find(contains(uu,'$AC$49'));
        ac49 = D1_First{idx_ac49,2};
        ac49_nan = isnan(ac49);
        
        if ac49_nan == 1
            idx_ac49_2 = find(contains(uu4,'$AC$49'));
            ac49_2 = D2_First{idx_ac49_2,2};
            ac49_nan_2 = isnan(ac49_2);
            if ac49_nan_2 == 1
                D1_First{idx_ac49,2} = [];
            else
                D1_First{idx_ac49,2} = ac49_2;
            end
        end
    catch
    end
    
    try
        idx_ac50 = find(contains(uu,'$AC$50'));
        ac50 = D1_First{idx_ac50,2};
        ac50_nan = isnan(ac50);
        
        if ac50_nan == 1
            idx_ac50_2 = find(contains(uu4,'$AC$50'));
            ac50_2 = D2_First{idx_ac50_2,2};
            ac50_nan_2 = isnan(ac50_2);
            if ac50_nan_2 == 1
                D1_First{idx_ac50,2} = [];
            else
                D1_First{idx_ac50,2} = ac50_2;
            end
        end
    catch
    end
    
    try
        idx_ag37 = find(contains(uu,'$AG$37'));
        ag37 = D1_First{idx_ag37,2};
        ag37_nan = isnan(ag37);
        
        if ag37_nan == 1
            idx_ag37_2 = find(contains(uu4,'$AG$37'));
            ag37_2 = D2_First{idx_ag37_2,2};
            ag37_nan_2 = isnan(ag37_2);
            if ag37_nan_2 == 1
                D1_First{idx_ag37,2} = [];
            else
                D1_First{idx_ag37,2} = ag37_2;
            end
        end
    catch
    end
    
    try
        idx_ag38 = find(contains(uu,'$AG$38'));
        ag38 = D1_First{idx_ag38,2};
        ag38_nan = isnan(ag38);
        
        if ag38_nan == 1
            idx_ag38_2 = find(contains(uu4,'$AG$38'));
            ag38_2 = D2_First{idx_ag38_2,2};
            ag38_nan_2 = isnan(ag38_2);
            if ag38_nan_2 == 1
                D1_First{idx_ag38,2} = [];
            else
                D1_First{idx_ag38,2} = ag38_2;
            end
        end
    catch
    end
    
    try
        idx_ag39 = find(contains(uu,'$AG$39'));
        ag39 = D1_First{idx_ag39,2};
        ag39_nan = isnan(ag39);
        
        if ag39_nan == 1
            idx_ag39_2 = find(contains(uu4,'$AG$39'));
            ag39_2 = D2_First{idx_ag39_2,2};
            ag39_nan_2 = isnan(ag39_2);
            if ag39_nan_2 == 1
                D1_First{idx_ag39,2} = [];
            else
                D1_First{idx_ag39,2} = ag39_2;
            end
        end
    catch
    end
    
    try
        idx_ag40 = find(contains(uu,'$AG$40'));
        ag40 = D1_First{idx_ag40,2};
        ag40_nan = isnan(ag40);
        
        if ag40_nan == 1
            idx_ag40_2 = find(contains(uu4,'$AG$40'));
            ag40_2 = D2_First{idx_ag40_2,2};
            ag40_nan_2 = isnan(ag40_2);
            if ag40_nan_2 == 1
                D1_First{idx_ag40,2} = [];
            else
                D1_First{idx_ag40,2} = ag40_2;
            end
        end
    catch
    end
    
    try
        idx_ag41 = find(contains(uu,'$AG$41'));
        ag41 = D1_First{idx_ag41,2};
        ag41_nan = isnan(ag41);
        
        if ag41_nan == 1
            idx_ag41_2 = find(contains(uu4,'$AG$41'));
            ag41_2 = D2_First{idx_ag41_2,2};
            ag41_nan_2 = isnan(ag41_2);
            if ag41_nan_2 == 1
                D1_First{idx_ag41,2} = [];
            else
                D1_First{idx_ag41,2} = ag41_2;
            end
        end
    catch
    end
    
    try
        idx_ag42 = find(contains(uu,'$AG$42'));
        ag42 = D1_First{idx_ag42,2};
        ag42_nan = isnan(ag42);
        
        if ag42_nan == 1
            idx_ag42_2 = find(contains(uu4,'$AG$42'));
            ag42_2 = D2_First{idx_ag42_2,2};
            ag42_nan_2 = isnan(ag42_2);
            if ag42_nan_2 == 1
                D1_First{idx_ag42,2} = [];
            else
                D1_First{idx_ag42,2} = ag42_2;
            end
        end
    catch
    end
    
    try
        idx_ag43 = find(contains(uu,'$AG$43'));
        ag43 = D1_First{idx_ag43,2};
        ag43_nan = isnan(ag43);
        
        if ag43_nan == 1
            idx_ag43_2 = contains(uu4,'$AG$43');
            ag43_2 = D2_First{idx_ag43_2,2};
            ag43_nan_2 = isnan(ag43_2);
            if ag43_nan_2 == 1
                D1_First{idx_ag43,2} = [];
            else
                D1_First{idx_ag43,2} = ag43_2;
            end
        end
    catch
    end
    
    try
        idx_ag44 = find(contains(uu,'$AG$44'));
        ag44 = D1_First{idx_ag44,2};
        ag44_nan = isnan(ag44);
        
        if ag44_nan == 1
            idx_ag44_2 = find(contains(uu4,'$AG$44'));
            ag44_2 = D2_First{idx_ag44_2,2};
            ag44_nan_2 = isnan(ag44_2);
            if ag44_nan_2 == 1
                D1_First{idx_ag44,2} = [];
            else
                D1_First{idx_ag44,2} = ag44_2;
            end
        end
    catch
    end
    
    try
        idx_ag45 = find(contains(uu,'$AG$45'));
        ag45 = D1_First{idx_ag45,2};
        ag45_nan = isnan(ag45);
        
        if ag45_nan == 1
            idx_ag45_2 = find(contains(uu4,'$AG$45'));
            ag45_2 = D2_First{idx_ag45_2,2};
            ag45_nan_2 = isnan(ag45_2);
            if ag45_nan_2 == 1
                D1_First{idx_ag45,2} = [];
            else
                D1_First{idx_ag45,2} = ag45_2;
            end
        end
    catch
    end
    
    try
        idx_ag46 = find(contains(uu,'$AG$46'));
        ag46 = D1_First{idx_ag46,2};
        ag46_nan = isnan(ag46);
        
        if ag46_nan == 1
            idx_ag46_2 = find(contains(uu4,'$AG$46'));
            ag46_2 = D2_First{idx_ag46_2,2};
            ag46_nan_2 = isnan(ag46_2);
            if ag46_nan_2 == 1
                D1_First{idx_ag46,2} = [];
            else
                D1_First{idx_ag46,2} = ag46_2;
            end
        end
    catch
    end
    
    try
        idx_ag47 = find(contains(uu,'$AG$47'));
        ag47 = D1_First{idx_ag47,2};
        ag47_nan = isnan(ag47);
        
        if ag47_nan == 1
            idx_ag47_2 = find(contains(uu4,'$AG$47'));
            ag47_2 = D2_First{idx_ag47_2,2};
            ag47_nan_2 = isnan(ag47_2);
            if ag47_nan_2 == 1
                D1_First{idx_ag47,2} = [];
            else
                D1_First{idx_ag47,2} = ag47_2;
            end
        end
    catch
    end
    
    try
        idx_ag48 = find(contains(uu,'$AG$48'));
        ag48 = D1_First{idx_ag48,2};
        ag48_nan = isnan(ag48);
        
        if ag48_nan == 1
            idx_ag48_2 = find(contains(uu4,'$AG$48'));
            ag48_2 = D2_First{idx_ag48_2,2};
            ag48_nan_2 = isnan(ag48_2);
            if ag48_nan_2 == 1
                D1_First{idx_ag48,2} = [];
            else
                D1_First{idx_ag48,2} = ag48_2;
            end
        end
    catch
    end
    
    try
        idx_ag49 = find(contains(uu,'$AG$49'));
        ag49 = D1_First{idx_ag49,2};
        ag49_nan = isnan(ag49);
        
        if ag49_nan == 1
            idx_ag49_2 = find(contains(uu4,'$AG$49'));
            ag49_2 = D2_First{idx_ag49_2,2};
            ag49_nan_2 = isnan(ag49_2);
            if ag49_nan_2 == 1
                D1_First{idx_ag49,2} = [];
            else
                D1_First{idx_ag49,2} = ag49_2;
            end
        end
    catch
    end
    
    try
        idx_ag50 = find(contains(uu,'$AG$50'));
        ag50 = D1_First{idx_ag50,2};
        ag50_nan = isnan(ag50);
        
        if ag50_nan == 1
            idx_ag50_2 = find(contains(uu4,'$AG$50'));
            ag50_2 = D2_First{idx_ag50_2,2};
            ag50_nan_2 = isnan(ag50_2);
            if ag50_nan_2 == 1
                D1_First{idx_ag50,2} = [];
            else
                D1_First{idx_ag50,2} = ag50_2;
            end
        end
    catch
    end
    
    if find(~cellfun(@isempty,D1_First(1,2))) == 1
        D1_First(1,2)= cellstr(s1_dens);
    end
    
    final_table_dens = [final_table_dens, D1_First(:,2)];

end

final_table_dens_2 = [D1_First(:,1),  final_table_dens];
final_table_dens_3 = table2array(final_table_dens_2);
final_table_dep_dens = array2table(final_table_dens_3.');

final_table_dep_dens_without_header =  final_table_dep_dens(2:end,:);

final_table_dep_dens_corrected = [final_table_dep;final_table_dep_dens_without_header];
end

