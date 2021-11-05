function [pay_factor_dep_1st,pay_factor_dep_density_1st] = dep_AV_VMA_1st(num_dep,txt_dep,raw_dep,bb29, bb33, bb41, core_corr, num_dens, txt_dens,num_test,C2)
%UNTITLED Summary of this function goes here

% [num,txt,raw] = xlsread('last_typo_first_fraud_dep_13947') ;

% Rolling_Gmm = readtable('13947 405-435A QASP v1_Dept.xlsx','Sheet','Rolling Gmm (HIDDEN)','ReadVariableNames',true);
% %department data

num = num_dep;
txt = txt_dep;
raw = raw_dep;

Label = raw(1,:)';
%D1 = raw(13,:)';
%D1_First = [Label, D1];

%idx = find(contains(D1_First,'$U$61'))

%i=5
%hh = Label{i,1};
%str = convertCharsToStrings(hh)
%idx1 = find(contains(str,'$AG$40'))
uu = string(Label);
param = raw(:,1);
param2 = string(param);
s2 = param2;

idx_param_dep = strncmpi(param,'D(',2);
para_dep = param(idx_param_dep==1);
s3 = natsort(para_dep);

%tf = strcmp(s1,s2);
%D2 = raw(tf,:)';

%s3 = {'D(4)'};
%s3 = {'D(1)';'D(2)';'D(3)';'D(4)';'D(5)';'D(6)';'D(7)';'D(8)';'D(9)';'D(10)';'D(11)';'D(12)';'D(13)';'D(14)';'D(15)';'D(16)'};
%n131_values= [1496.5; 1527.2 ; 1522.4; 1523.5; 1596.5; 1519.8; 1646.5 ];

z133 = [];
z132 = [];
z131 = [];
z130 = [];
z129 = [];
z128 = [];


for i=1:length(s3)
    s1 = s3{i};
    tf = strcmp(s1,s2);
    D1 = raw(tf,:)';
    D1_First = [Label, D1];
    
    idx_u32 = find(contains(uu,'$U$32'))
    u32 = D1_First{idx_u32,2};
    
    idx_u33 = find(contains(uu,'$U$33'))
    u33 = D1_First{idx_u33,2};
    
    idx_z32 = find(contains(uu,'$Z$32'))
    z32 = D1_First{idx_z32,2};
    
    idx_z33 = find(contains(uu,'$Z$33'))
    z33 = D1_First{idx_z33,2};
    
    idx_u37 = find(contains(uu,'$U$37'))
    u37 = D1_First{idx_u37,2};
    
    idx_u38 = find(contains(uu,'$U$38'))
    u38 = D1_First{idx_u38,2};
    
    idx_z37 = find(contains(uu,'$Z$37'))
    z37 = D1_First{idx_z37,2};
    
    idx_z38 = find(contains(uu,'$Z$38'))
    z38 = D1_First{idx_z38,2};
    
    
    %% FOP for AASHTO T 312 SuperPave Gyratory Compactor
    idx_u52 = find(contains(uu,'$U$52'))
    u52 = D1_First{idx_u52,2};
    
    idx_u53 = find(contains(uu,'$U$53'))
    u53 = D1_First{idx_u53,2};
    
    idx_u54 = find(contains(uu,'$U$54'))
    u54 = D1_First{idx_u54,2};
    
    idx_u55 = find(contains(uu,'$U$55'))
    u55 = D1_First{idx_u55,2};
    
    idx_z52 = find(contains(uu,'$Z$52'))
    z52 = D1_First{idx_z52,2};
    
    idx_z53 = find(contains(uu,'$Z$53'))
    z53 = D1_First{idx_z53,2};
    
    idx_z54 = find(contains(uu,'$Z$54'))
    z54 = D1_First{idx_z54,2};
    
    idx_z55 = find(contains(uu,'$Z$55'))
    z55 = D1_First{idx_z55,2};
    
    %% FOP for AASHTO T 166 Bulk Specific Gravity of Compacted Mix (Method A)
    
    idx_u59 = find(contains(uu,'$U$59'))
    u59 = D1_First{idx_u59,2};
    
    idx_u60 = find(contains(uu,'$U$60'))
    u60 = D1_First{idx_u60,2};
    
    idx_u61 = find(contains(uu,'$U$61'))
    u61 = D1_First{idx_u61,2};
    
    idx_u62 = find(contains(uu,'$U$62'))
    u62 = D1_First{idx_u62,2};
    
    idx_u63 = find(contains(uu,'$U$63'))
    u63 = D1_First{idx_u63,2};
    
    idx_z59 = find(contains(uu,'$Z$59'))
    z59 = D1_First{idx_z59,2};
    
    idx_z60 = find(contains(uu,'$Z$60'))
    z60 = D1_First{idx_z60,2};
    
    idx_z61 = find(contains(uu,'$Z$61'))
    z61 = D1_First{idx_z61,2};
    
    idx_z62 = find(contains(uu,'$Z$62'))
    z62 = D1_First{idx_z62,2};
    
    idx_z63 = find(contains(uu,'$Z$63'))
    z63 = D1_First{idx_z63,2};
    
    %% FOP for AASHTO T308 Asphalt Content by Ignition Method
    
    idx_s111 = find(contains(uu,'$S$111'))
    s111 = D1_First{idx_s111,2};
    
    idx_s112 = find(contains(uu,'$S$112'))
    s112 = D1_First{idx_s112,2};
    
    idx_s114 = find(contains(uu,'$S$114'))
    s114 = D1_First{idx_s114,2};
    
    idx_s116 = find(contains(uu,'$S$116'))
    s116 = D1_First{idx_s116,2};
    
%     idx_ap111 = find(contains(uu,'$AP$111'))
%     ap111 = D1_First{idx_ap111,2};
    
    idx_ap112 = find(contains(uu,'$AP$112'))
    ap112 = D1_First{idx_ap112,2};
    
    idx_ap113 = find(contains(uu,'$AP$113'))
    ap113 = D1_First{idx_ap113,2};
    
    idx_ap114 = find(contains(uu,'$AP$114'))
    ap114 = D1_First{idx_ap114,2};
    
    if isnan(ap114)
        ap114 = [];
    end
    
    idx_ap115 = find(contains(uu,'$AP$115'))
    ap115 = D1_First{idx_ap115,2};
    
    %% FOP for AASHTO T329 Moisture Content of Bituminous Mixes
    
    idx_n127 = find(contains(uu,'$N$127'))
    n127 = D1_First{idx_n127,2};
    
    idx_n128 = find(contains(uu,'$N$128'))
    n128 = D1_First{idx_n128,2};
    
    idx_n129 = find(contains(uu,'$N$129'))
    n129 = D1_First{idx_n129,2};
    
    try
    idx_z129 = find(contains(uu,'$Z$129'))
    z129 = D1_First{idx_z129,2};
    catch
    end
    
    if isnan(z129)
        z129 = [];
    end
    
    try
    idx_z130 = find(contains(uu,'$Z$130'))
    z130 = D1_First{idx_z130,2};
    catch
    end
    
    if isnan(z130)
        z130 = [];
    end
    
    try
    idx_z131 = find(contains(uu,'$Z$131'))
    z131 = D1_First{idx_z131,2};
    catch
    end
    
    if isnan(z131)
        z131 = [];
    end
    
    try
    idx_z132 = find(contains(uu,'$Z$132'))
    z132 = D1_First{idx_z132,2};
    catch
    end
    
    if isnan(z132)
        z132 = [];
    end
    
    try
    idx_z133 = find(contains(uu,'$Z$133'))
    z133 = D1_First{idx_z133,2};
    catch
    end
    
    if isnan(z133)
        z133 = [];
    end
       
    if isempty(n129)
        
        n131 = [];
    else
        
        
        if isempty (z133)
            
            if isempty (z132)
                
                if isempty (z131)
                    
                    if isempty (z130)
                        
                        n131 = z129;
                        
                        
                    else
                        n131 = z130;
                    end
                    
                    
                    
                else
                    n131 = z131;
                end
                
                
                
            else
                n131 = z132;
            end
            
            
            
            
        else
            
            n131 = z133;
        end
        
    end    
    
    %% Summary of mix properties
    
    % idx_bb29 = find(contains(uu,'$BB$29'))
    % bb29 = D1_First{idx_bb29,2};
    %bb29 = 2.677;
    
    % idx_bb33 = find(contains(uu,'$BB$33'))
    % bb33 = D1_First{idx_bb33,2};
    %bb33 = 2.562;
    
    % idx_bb41 = find(contains(uu,'$BB$41'))
    % bb41 = D1_First{idx_bb41,2};
    %bb41 = 1.0320;
    
    % idx_be118 = find(contains(uu,'$BE$118'))
    % be118 = D1_First{idx_be118,2};
    
    %% Calculation
    
    %% formula --- FOP for AASHTO T 209 Theoretical Max Specific Gravity (Bowl Method)
    
    if isempty(u33) || isempty(u32)
        u34 = [];
    else 
        u34 = (u33-u32); % mass of dry sample in air increment 1
    end 
    
    if isempty(z33) || isempty(z32)
        z34 = [];
    else 
        z34 = (z33-z32); % mass of dry sample in air increment 2
    end  
   
    if isempty(u37) || isempty(u38)
        u39 = [];
    else 
        u39 = (u37-u38); %submerged weight of sample increment 1
    end  
    
    if isempty(z37) || isempty(z38)
        z39 = [];
    else 
        z39 = (z37-z38); %submerged weight of sample increment 2
    end  
    
     if isempty(u34) || isempty(u39)
        u40 = [];
    else 
        u40 = (u34/(u34-u39)); %Maxm specific gravity (Gmm) of increment 1
    end     
    
    if isempty(z34) || isempty(z39)
        z40 = [];
    else 
        z40 = (z34/(z34-z39)); %Maxm specific gravity (Gmm) of increment 2
    end 
    
    if isempty(u40) || isempty(z40)
        u41 = [];
    else 
        u41 = mean([u40,z40]); %Average Gmm
    end 
    
    if isempty(u40) || isempty(z40)
        g42 = [];
    else 
        g42  = abs(u40-z40); %Range
    end  
    
    if isempty(g42)
        v42 = [];
    elseif g42 >0.014
        v42 = 'No';
        fprintf('Within d2s precision not acceptable');
    else
        v42 = 'Yes';
        fprintf('Within d2s precision acceptable');
    end
    
    
    %% formula -- FOP for AASHTO T 166 Bulk Specific Gravity of Compacted Mix (Method A)
    
    if isempty(u61) || isempty(u62) || isempty(u63)
        u64 = [];
    else 
        u64 = sum(u61/(u63-u62)); % bulk specific gravity specimen 1
    end 
    
    if isempty(z61) || isempty(z62) || isempty(z63)
        z64 = [];
    else 
        z64 = sum(z61/(z63-z62)); % bulk specific gravity specimen 2
    end  
    
    if isempty(u64) || isempty(z64)
        u65 = [];
    else 
        u65 = mean([u64,z64]);  % average bulk specific gravity 
    end 
    
    if isempty(u64) || isempty(z64)
        g66 = [];
    else 
        g66  = abs(u64-z64); %Range
    end
    
    if isempty(g66) 
        v66 = [];
    elseif g66 >0.009
        v66 = 'No';
        fprintf('Within d2s precision not acceptable');
    else
        v66 = 'Yes';
        fprintf('Within d2s precision acceptable');
    end
    
    %% FOP for AASHTO T329 Moisture Content of Bituminous Mixes
    
    % formula
    
    if isempty(n128) || isempty(n129)
        n130 = [];
    else 
        n130 = n129 - n128; %Mass Initial Sample (Mi)
    end
    
    if isempty(n128) || isempty(n131)
        n132 = [];
    else 
        n132 = n131 - n128 ; % final dry mass
    end
    
    
    if isempty(n132)        
       if ~isempty(s113) || ~isempty(s115)
            n133 = 0;
       else
           n133 = [];
       end
    else 
        n133 = sum(((n130 - n132)/n130)*100); %moisture content
    end
    
    %formula
    
    if isempty(n129)
        z128 = [];
    else 
        z128 = n129; %Mi
    end
      
    
    ai128 = n130; %mass sample
    
    
    %% FOP for AASHTO T308 Asphalt Content by Ignition Method
    
    
    % formula - Data from External balance
    
    if isempty(s112) || isempty(s111)
        s113 = [];
    else 
        s113 = s112 - s111; % Mass Initial Sample (Mi)
    end
    
    if isempty(s111) || isempty(s114)
        s115 = [];
    else 
        s115  = s114 - s111; %Mass Residual Aggregate (Mf)
    end
    
    s117 = n133;  %Moisture Content from AASHTO T 329 (MC)
    
    if isempty(s113) && isempty(s115) && isempty(s117) 
        s118 = [];
    else 
        s118 = (((s113-s115)/s113)*100-s117-s116); % Pb (method b)
    end
    
    
    % formula Data from ignition furnace printed ticket (attach ticket)
    
    if ap114 == 0
        yypp = 1;
    else
        yypp = 0;
    end
    
    if isempty(s116) && isempty(ap114)
        ap116 = [];
    elseif yypp || isempty(ap114)
        ap116 = s116; % ap116 = ignition correction furnace factor (Cf)
    elseif isequal(ap114,s116)
        ap116 = 0;  % ap116 = ignition correction furnace factor (Cf)
    else
        ap116 = ap114;  % ap116 = ignition correction furnace factor (Cf)
    end
    
    ap117 = n133; %Moisture Content from AASHTO T 329 (MC)
    
    if isempty(ap115) && isempty(ap116) && isempty(ap117) 
        ap118 = [];
    else 
        ap118 = ap115 - ap116 - ap117; % Pb (method a)
    end
    
    
    
    if abs(s118-ap118) >0.15
        fprintf('Difference between Method A and Method B Pb within 0.15%?');
        w119 = 'No';
    else
        fprintf('Difference between Method A and Method B Pb within 0.15%?');
        w119 = 'Yes';
        fprintf('*ATTENTION:   Determine and correct the source of the variation prior to reliance on the printed ticket. Document resolution actions in the Remarks box');
        c121 = 'Yes';
    end
    
    if isempty(s118) || isempty(ap118)
        be118 = [];
    elseif abs(s118-ap118) >0.15
        be118 = s118;
%         fprintf('Pb is', be118 );
    else
        be118 = ap118;      
%         fprintf('Pb is', be118 );
    end
    
    if isempty(s118) || isempty(ap118)
        y119 = [];
    else 
        y119 = ap118 - s118;
    end    
    
    %% formula - Summary of mix properties
    
    
    if isempty(bb29) 
        at29 = [];
    else
        at29 = bb29;
    end
    
    if isempty(bb33) 
        at33 = [];
    else
        at33 = bb33;
    end
    
    if isempty(u40) 
        at35 = [];
    else
        at35 = u40;
    end
    
    if isempty(u64) 
        at37 = [];
    else
        at37 = u64;
    end
    
    if isempty(u61) || isempty(u62) || isempty(u63)  
        at39 = [];
    else
        at39 = (((u63 - u61)/(u63 - u62))*100);
    end
    
    if isempty(bb41) 
        at41 = [];
    else
        at41 = bb41;
    end
    
    if isempty(be118) 
        bb43 = [];
    else
        bb43 = be118;
    end
    
    if isempty(bb43) 
        at43 = [];
    else
        at43 = bb43;
    end
    
    if isempty(bb43) 
        bb49 = [];
    else
        bb49 = 100 - bb43;
    end
    
    if isempty(bb49) 
        at49 = [];
    else
        at49 = bb49;
    end
    
    if isempty(at35) || isempty(at41) || isempty(at43) || isempty(at49) 
        at31 = [];
    else
        at31 = at49/((100/at35)-(at43/at41));
    end
    
    if isempty(at41) || isempty(at33) || isempty(at31)  
        at45 = [];
    else
        at45 = 100*(((at31 - at33)/(at31*at33))*at41);
    end
    
    if isempty(at45) || isempty(at41) || isempty(at43) || isempty(at49) || isempty(at31)
        at47 = [];
    else
        at47 = (at43 - (at45/100)*at49);
    end
    
    if isempty(bb29) 
        ax29 = [];
    else
        ax29 = bb29;
    end
    
    if isempty(bb49) 
        ax49 = [];
    else
       ax49 = bb49;
    end
    
    if isempty(z40) 
        ax35 = [];
    else
       ax35 = z40;
    end
    
    if isempty(bb41) 
        ax41 = [];
    else
       ax41 = bb41;
    end
    
    if isempty(bb43) 
        ax43 = [];
    else
       ax43 = bb43;
    end
    
    if isempty(ax35) || isempty(ax41) || isempty(ax43) || isempty(ax49) 
        ax31 = [];
    else
        ax31 = ax49/((100/ax35)-(ax43/ax41));
    end
    
    if isempty(bb33) 
        ax33 = [];
    else
       ax33 = bb33;
    end
    
    if isempty(z64) 
        ax37 = [];
    else
       ax37 = z64;
    end
    
    if isempty(z61) || isempty(z62) || isempty(z63) 
        ax39 = [];
    else
        ax39 = (((z63 - z61)/(z63 - z62))*100);
    end
    
    if isempty(ax41) || isempty(ax33) || isempty(ax31) 
        ax45 = [];
    else
        ax45 = 100*(((ax31 - ax33)/(ax31*ax33))*ax41);
    end
    
    if isempty(ax45) || isempty(ax41) || isempty(ax43) || isempty(ax49) || isempty(ax31)
        ax47 = [];
    else
        ax47 = (ax43 - (ax45/100)*ax49);
    end
    
    if isempty(ax35) || isempty(ax37) 
        ax56 = [];
    else
        ax56 = 100 -((100*ax37)/ax35);
    end
    
    % bb52 = ai153;
    
    % ax52 = bb52;
    % ax54 = (ax47*4870)/(ax49*ax52);
    
    if isempty(ax37) || isempty(ax33) || isempty(ax49) 
        ax58 = [];
    else
        ax58 = 100 -((ax37*ax49)/ax33);
    end
    
    if isempty(ax56) || isempty(ax58) 
        ax60 = [];
    else
        ax60 = 100*((ax58 - ax56)/ax58);
    end
    
    if isempty(u41) 
        bb35 = [];
    else
        bb35 = u41;
    end
    
    if isempty(u65) 
        bb37 = [];
    else
        bb37 = u65;
    end
    
    if isempty(bb35) || isempty(bb41) || isempty(bb43) || isempty(bb49)
        bb31 = [];
    else
        bb31 = bb49/((100/bb35)-(bb43/bb41));
    end
    
    if isempty(at39) || isempty(ax39) 
        bb39 = [];
    else
        bb39 = mean([at39, ax39]);
    end
    
    if isempty(bb41) || isempty(bb33) || isempty(bb31) 
        bb45 = [];
    else
        bb45 = 100*(((bb31 - bb33)/(bb31*bb33))*bb41);
    end
    
    if isempty(bb45) || isempty(bb41) || isempty(bb43) || isempty(bb49) || isempty(bb31)
        bb47 = [];
    else
        bb47 = (bb43 - (bb45/100)*bb49);
    end
    
    % at52 = bb52;
    % at54 = (at47*4870)/(at49*at52);
    
    if isempty(bb35) || isempty(bb37) 
        bb56 = [];
    else
        bb56 = 100 -((100*bb37)/bb35);
    end
    
    if isempty(bb37) || isempty(bb33) || isempty(bb49) 
        bb58 = [];
    else
        bb58 = 100 -((bb37*bb49)/bb33);
    end
    
    ap = split(s1,"(");
    ap2 = split(ap{end,1},")");
    ap3 = ap2{1,1};
    ap4 = str2num(ap3);
    
    pay_factor_dep_1st{i,1} = i;
    pay_factor_dep_1st{i,2} = bb56;
    pay_factor_dep_1st{i,3} = bb58;
    pay_factor_dep_1st{i,4} = ap4;
    pay_factor_dep_1st{i,5} = bb35;
    pay_factor_dep_1st{i,6} = v42;
    pay_factor_dep_1st{i,7} = v66;
    pay_factor_dep_1st{i,8} = w119;
    
end

%%  Density inputs

idx_param_dep_dens = strncmpi(param,'D-DENS(',7);
para_dep_dens = param(idx_param_dep_dens == 1);
s4 = natsort(para_dep_dens);

%s4 = {'D-DENS(1)';'D-DENS(2)';'D-DENS(3)';'D-DENS(4)';'D-DENS(5)';'D-DENS(6)';'D-DENS(7)';'D-DENS(8)';'D-DENS(9)';'D-DENS(10)'};

pay_factor_dep_1st_2 = pay_factor_dep_1st;

dep = num_test(:,8:13);
lastidx_dep = find(isnan(dep(:,1)),1) - 1;
dep_new_lot = dep(1:lastidx_dep, 1:2);
dep_new_lot_Gmm = [dep_new_lot, cell2mat(pay_factor_dep_1st_2(:,5))];

for k = 1: length(unique(dep_new_lot_Gmm(:,1)))
    lot_gmm = find(dep_new_lot_Gmm(:,1)==k);
    lot_gmm_value(k,1) = mean(dep_new_lot_Gmm(lot_gmm,3));
end

Rolling_gmm = [vertcat(lot_gmm_value,NaN,NaN), vertcat(C2,lot_gmm_value,NaN), vertcat(NaN, C2,lot_gmm_value) ];
I35_1 =  nanmean(Rolling_gmm,2);
I35_2 = I35_1(1:end-2);

Lot_No_dens = num2cell([num_dens(:,29),num_dens(:,1)]);
Lot_No_dens_2 = [txt_dens(2:end,1),Lot_No_dens ];
% 
% Rolling_Gmm_3 = Rolling_Gmm_2(:,2);

%DDENS1 = raw(70,:)';
%uu2 = string(Label)

for j = 1:length(s4)
    
    s5 = s4{j};
    tf = strcmp(s5,s2);
    D3 = raw(tf,:)';
    DDENS1_First = [Label, D3];

    %DDENS1_First = [Label, DDENS1];
    
    idx_ac37 = find(contains(uu,'$AC$37'));
    if isempty(idx_ac37) == 1
        ac37 = [];
    else 
        ac37 = DDENS1_First{idx_ac37,2};
    end
    
    idx_ac38 = find(contains(uu,'$AC$38'));
    if isempty(idx_ac38) == 1
        ac38 = [];
    else 
        ac38 = DDENS1_First{idx_ac38,2};
    end
    
    
    idx_ac39 = find(contains(uu,'$AC$39'));
    if isempty(idx_ac39) == 1
        ac39 = [];
    else 
        ac39 = DDENS1_First{idx_ac39,2};
    end   
    
    idx_ac40 = find(contains(uu,'$AC$40'));
    if isempty(idx_ac40) == 1
        ac40 = [];
    else 
        ac40 = DDENS1_First{idx_ac40,2};
    end
    
    idx_ac41 = find(contains(uu,'$AC$41'));
    if isempty(idx_ac41) == 1
        ac41 = [];
    else 
        ac41 = DDENS1_First{idx_ac41,2};
    end  
    
    idx_ac42 = find(contains(uu,'$AC$42'));
    if isempty(idx_ac42) == 1
        ac42 = [];
    else 
        ac42 = DDENS1_First{idx_ac42,2};
    end
    
    idx_ac43 = find(contains(uu,'$AC$43'));
    if isempty(idx_ac43) == 1
        ac43 = [];
    else 
        ac43 = DDENS1_First{idx_ac43,2};
    end
      
    idx_ac44 = find(contains(uu,'$AC$44'));
    if isempty(idx_ac44) == 1
        ac44 = [];
    else 
        ac44 = DDENS1_First{idx_ac44,2};
    end
    
    idx_ac45 = find(contains(uu,'$AC$45'));
    if isempty(idx_ac45) == 1
        ac45 = [];
    else 
        ac45 = DDENS1_First{idx_ac45,2};
    end
    
    idx_ac46 = find(contains(uu,'$AC$46'));
    if isempty(idx_ac46) == 1
        ac46= [];
    else 
        ac46 = DDENS1_First{idx_ac46,2};
    end
      
    idx_ac47 = find(contains(uu,'$AC$47'));
    if isempty(idx_ac47) == 1
        ac47 = [];
    else 
        ac47 = DDENS1_First{idx_ac47,2};
    end
    
    idx_ac48 = find(contains(uu,'$AC$48'));
    if isempty(idx_ac48) == 1
        ac48 = [];
    else 
        ac48 = DDENS1_First{idx_ac48,2};
    end
    
    idx_ac49 = find(contains(uu,'$AC$49'));
    if isempty(idx_ac49) == 1
        ac49 = [];
    else 
        ac49 = DDENS1_First{idx_ac49,2};
    end
    
    idx_ac50 = find(contains(uu,'$AC$50'));
    if isempty(idx_ac50) == 1
        ac50 = [];
    else 
        ac50 = DDENS1_First{idx_ac50,2};
    end
    
    idx_ag37 = find(contains(uu,'$AG$37'));
    if isempty(idx_ag37) == 1
        ag37 = [];
    else 
        ag37 = DDENS1_First{idx_ag37,2};
    end
    
    
    idx_ag38 = find(contains(uu,'$AG$38'));
    if isempty(idx_ag38) == 1
        ag38 = [];
    else 
        ag38 = DDENS1_First{idx_ag38,2};
    end
    
    idx_ag39 = find(contains(uu,'$AG$39'));
    if isempty(idx_ag39) == 1
        ag39 = [];
    else 
        ag39 = DDENS1_First{idx_ag39,2};
    end
    
    idx_ag40 = find(contains(uu,'$AG$40'));
    if isempty(idx_ag40) == 1
        ag40 = [];
    else 
        ag40 = DDENS1_First{idx_ag40,2};
    end
    
    idx_ag41 = find(contains(uu,'$AG$41'));
    if isempty(idx_ag41) == 1
        ag41 = [];
    else 
        ag41 = DDENS1_First{idx_ag41,2};
    end
    
    idx_ag42 = find(contains(uu,'$AG$42'));
    if isempty(idx_ag42) == 1
        ag42 = [];
    else 
        ag42 = DDENS1_First{idx_ag42,2};
    end
    
    idx_ag43 = find(contains(uu,'$AG$43'));
    if isempty(idx_ag43) == 1
        ag43 = [];
    else 
        ag43 = DDENS1_First{idx_ag43,2};
    end
    
    idx_ag44 = find(contains(uu,'$AG$44'));
    if isempty(idx_ag44) == 1
        ag44 = [];
    else 
        ag44 = DDENS1_First{idx_ag44,2};
    end
    
    idx_ag45 = find(contains(uu,'$AG$45'));
    if isempty(idx_ag45) == 1
        ag45 = [];
    else 
        ag45 = DDENS1_First{idx_ag45,2};
    end
    
    idx_ag46 = find(contains(uu,'$AG$46'));
    if isempty(idx_ag46) == 1
        ag46 = [];
    else 
        ag46 = DDENS1_First{idx_ag46,2};
    end
    
    idx_ag47 = find(contains(uu,'$AG$47'));
    if isempty(idx_ag47) == 1
        ag47 = [];
    else 
        ag47 = DDENS1_First{idx_ag47,2};
    end
    
    idx_ag48 = find(contains(uu,'$AG$48'));
    if isempty(idx_ag48) == 1
        ag48 = [];
    else 
        ag48 = DDENS1_First{idx_ag48,2};
    end
    
    idx_ag49 = find(contains(uu,'$AG$49'));
    if isempty(idx_ag49) == 1
        ag49 = [];
    else 
        ag49 = DDENS1_First{idx_ag49,2};
    end
    
    idx_ag50 = find(contains(uu,'$AG$50'));
    if isempty(idx_ag50) == 1
        ag50 = [];
    else 
        ag50 = DDENS1_First{idx_ag50,2};
    end
    
    %% Density calculation
    
%     first_col  = txt_dens(2:end,1);
%     dens_col = num_dens(:,45);
%     [~, idx, idx2] = uniquecell(first_col);
%     ag222 = sortrows(idx);
%     I35 = dens_col(ag222,1);
    

    tf_new = strcmp(s5,string(Lot_No_dens_2(:,1)));
    tf_new_lot = unique(cell2mat(Lot_No_dens_2(tf_new,2)));
    
    I35 = I35_2(tf_new_lot,1);
    
%     pay_factor_dep_1st_2 
   
    %I35 = Rolling_Gmm_2{j,2};
    ak35 = I35* 62.245;
    
    ak37 = mean([ac37, ag37]);
    ak38 = mean([ac38, ag38]);
    ak39 = mean([ac39, ag39]);
    ak40 = mean([ac40, ag40]);
    ak41 = mean([ac41, ag41]);
    ak42 = mean([ac42, ag42]);
    ak43 = mean([ac43, ag43]);
    ak44 = mean([ac44, ag44]);
    ak45 = mean([ac45, ag45]);
    ak46 = mean([ac46, ag46]);
    ak47 = mean([ac47, ag47]);
    ak48 = mean([ac48, ag48]);
    ak49 = mean([ac49, ag49]);
    ak50 = mean([ac50, ag50]);
    
    ap37 = [];
    ap38 = [];
    ap39 = [];
    ap40 = [];
    ap41 = [];
    ap42 = [];
    ap43 = [];
    ap44 = [];
    ap45 = [];
    ap46 = [];
    ap47 = [];
    ap48 = [];
    ap49 = [];
    ap50 = [];
   
    ap = core_corr(:,j);
    ap2 = ap(~isnan(ap));
    
    for ii = 1:length(ap2);
        try
        
        if isempty(ap2(ii,1)) ==1
            
%             ap37 = ap37;
        else
            eval(['ap',num2str(37+ii-1),' = ap2(ii,1);'])
            
        end
             
        catch
        end
        
    end
    
 
    au37 = ak37 + ap37;
    au38 = ak38 + ap38;
    au39 = ak39 + ap39;
    au40 = ak40 + ap40;
    au41 = ak41 + ap41;
    au42 = ak42 + ap42;
    au43 = ak43 + ap43;
    au44 = ak44 + ap44;
    au45 = ak45 + ap45;
    au46 = ak46 + ap46;
    au47 = ak47 + ap47;
    au48 = ak48 + ap48;
    au49 = ak49 + ap49;
    au50 = ak50 + ap50;
    
    
    az37 = (au37/ak35)*100;
    az38 = (au38/ak35)*100;
    az39 = (au39/ak35)*100;
    az40 = (au40/ak35)*100;
    az41 = (au41/ak35)*100;
    az42 = (au42/ak35)*100;
    az43 = (au43/ak35)*100;
    az44 = (au44/ak35)*100;
    az45 = (au45/ak35)*100;
    az46 = (au46/ak35)*100;
    az47 = (au47/ak35)*100;
    az48 = (au48/ak35)*100;
    az49 = (au49/ak35)*100;
    az50 = (au50/ak35)*100;
   

    pay_factor_dep_density_1st{j,1} = az37;
    pay_factor_dep_density_1st{j,2} = az38;
    pay_factor_dep_density_1st{j,3} = az39;
    pay_factor_dep_density_1st{j,4} = az40;
    pay_factor_dep_density_1st{j,5} = az41;
    pay_factor_dep_density_1st{j,6} = az42;
    pay_factor_dep_density_1st{j,7} = az43;
    pay_factor_dep_density_1st{j,8} = az44;
    pay_factor_dep_density_1st{j,9} = az45;
    pay_factor_dep_density_1st{j,10} = az46;
    pay_factor_dep_density_1st{j,11} = az47;
    pay_factor_dep_density_1st{j,12} = az48;
    pay_factor_dep_density_1st{j,13} = az49;
    pay_factor_dep_density_1st{j,14} = az50;
 

    %pay_factor_density = pay_factor_density';

end
end

