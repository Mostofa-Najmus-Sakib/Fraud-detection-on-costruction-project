function [pay_factor_cont_last] = cont_AV_VMA_last(num_conc,txt_conc,raw_conc,bb29, bb33, bb41)
%UNTITLED4 Summary of this function goes here

% [num_conc,txt_conc,raw_conc] = xlsread('last_typo_first_fraud_cont_13947') ;
% %[num,txt,raw] = xlsread('Last_fraud_cont') ;



num = num_conc;
txt = txt_conc;
raw = raw_conc;

Label = raw(1,:)';
%D1 = raw(13,:)';
%D1_First = [Label, D1];ai128, ap111, ap112, ap113, ap114, ap115, ap116, ap117, ap118, at129, at31, at33, at35, at37, at39, at41, at43, at45, at47, at49, ax29, ax31, ax33, ax35, ax37, ax39, ax41, ax43, ax45, ax47, ax49, ax56, ax58, ax60, bb29, bb31, bb33, bb35, bb37, bb39, bb41, bb43, bb45, bb47, bb49, bb56, bb58, be118, c121, D1, D1_First, g42, g66, i, idx_ap111, idx_ap112, idx_ap113, idx_ap114, idx_ap115, idx_n127, idx_n128, idx_n129, idx_s111, idx_s112, idx_s114, idx_s116, idx_u32, idx_u33, idx_u37, idx_u38, idx_u52, idx_u53, idx_u54, idx_u55, idx_u59, idx_u60, idx_u61, idx_u62, idx_u63, idx_z32, idx_z33, idx_z37, idx_z38, idx_z52, idx_z53, idx_z54, idx_z55, idx_z59, idx_z60, idx_z61, idx_z62, idx_z63, Label, n127, n128, n129, n130, n131, n131_values, n132, n133, num, param, param2, raw, s1, s111, s112, s113, s114, s115, s116, s117, s118, s2, s3, tf, txt, u32, u33, u34, u37, u38, u39, u40, u41, u52, u53, u54, u55, u59, u60, u61, u62, u63, u64, u65, uu, v42, v66, w119, y119, z128, z32, z33, z34, z37, z38, z39, z40, z52, z53, z54, z55, z59, z60, z61, z62, z63, z64

%idx = find(contains(D1_First,'$U$61'))

%i=5
%hh = Label{i,1};
%str = convertCharsToStrings(hh)
%idx1 = find(contains(str,'$AG$40'))
uu = string(Label);
param = raw(:,1);
param2 = string(param);
s2 = param2;

idx_param_cont = strncmpi(param,'QC(',3);
para_cont = param(idx_param_cont==1);
s3 = natsort(para_cont);   

%tf = strcmp(s1,s2);
%D2 = raw(tf,:)';


%s3 = {'QC(1)';'QC(2)';'QC(3)';'QC(4)';'QC(5)';'QC(6)';'QC(7)';'QC(8)';'QC(9)';'QC(10)';'QC(11)';'QC(12)';'QC(13)';'QC(14)';'QC(15)';'QC(16)'};
%n131_values= [2240.8; 1985; 1829;1991; 1824.3; 1919.7;2205.9 ];

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
    
    idx_z38 = find(contains(uu,'$Z$38'));
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
    
    idx_ap111 = find(contains(uu,'$AP$111'))
    ap111 = D1_First{idx_ap111,2};
    
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
    
    pay_factor_cont_last{i,1} = i;
    pay_factor_cont_last{i,2} = bb56;
    pay_factor_cont_last{i,3} = bb58;
    pay_factor_cont_last{i,4} = ap4;
    pay_factor_cont_last{i,5} = bb35;
    pay_factor_cont_last{i,6} = v42;
    pay_factor_cont_last{i,7} = v66;
    pay_factor_cont_last{i,8} = w119;
    
end

end

