%% Department 1st and last value correction 
[~,~,raw] = xlsread('last_typo_first_fraud_dep_19965') ;
[~,~,raw_3] = xlsread('Dep_Result_with_missing_values_19965') ;

writetable(final_table_dep_dens_corrected,'Dep_value_all_corrected_19965_1st_2.xlsx','Sheet',1)

[~,~,raw] = xlsread('last_typo_last_fraud_dep_19965') ;
[~,~,raw_3] = xlsread('Dep_Result_with_missing_values_19965') ;

writetable(final_table_dep_dens_corrected,'Dep_value_all_corrected_19965_last.xlsx','Sheet',1)



%% Contractor 1st and last value correction

[~,~,raw] = xlsread('last_typo_first_fraud_cont_19965') ;
[~,~,raw_3] = xlsread('Cont_Result_with_missing_values_19965') ;

writetable(final_table_cont_corrected,'Cont_value_all_corrected_19965_1st.xlsx','Sheet',1)


[~,~,raw] = xlsread('last_typo_last_fraud_cont_19965') ;
[~,~,raw_3] = xlsread('Cont_Result_with_missing_values_19965') ;

writetable(final_table_cont_corrected,'Cont_value_all_corrected_19965_last.xlsx','Sheet',1)


%% Department 1st and last value

[num_dep,txt_dep,raw_dep] = xlsread('Dep_value_all_corrected_19965_1st') ;
[num_dep,txt_dep,raw_dep] = xlsread('Dep_value_all_corrected_19965_last') ;

% for last value as reported value take the following
% [num_dep,txt_dep,raw_dep] = xlsread('Dep_Result_with_missing_values_19965') ;

[num_dens,txt_dens,~] = xlsread('19965 Lot 17 405-435A Dept', 'Department Dens Summary') ;
[num_test,~,~] = xlsread('19965 Lot 17 405-435A Dept', 'Testing Summary') ;
[num_MLD,~,raw_MLD] = xlsread('19965 Lot 17 405-435A Dept', 'Spec Limits') ;

%Rolling_Gmm = readtable('13947 405-435A QASP v1_Dept.xlsx','Sheet','Rolling Gmm (HIDDEN)','ReadVariableNames',true);
%department data

core_corr = xlsread('core_correction_19965.xlsx','Sheet1');

bb29 = 2.656; 
bb33 = 2.578; 
bb41 = 1.0310;

C2 = raw_MLD{18,3};
    
%     I35 = 2.390007951;

%I35 = [2.392333333; 2.392333333; 2.390007951; 2.390007951; 2.38567315;2.38567315; 2.381431275;  2.381431275; 2.384555643; 2.384555643];

%% Contractor 1st and last value

[num_conc,txt_conc,raw_conc] = xlsread('Cont_value_all_corrected_19965_1st') ;
[num_conc,txt_conc,raw_conc] = xlsread('Cont_value_all_corrected_19965_last') ;

% for last value as reported value take the following
% [num_conc,txt_conc,raw_conc] = xlsread('Cont_Result_with_missing_values_19965') ;

bb29 = 2.656; 
bb33 = 2.578; 
bb41 = 1.0310;

%% Density calculation (1st value)

%%%%%%%%%%% First check the pay_factor_dep_density_1st for nan/empty then
%%%%%%%%%%% run below code accordingly

%  Do this if there are no empty cell (only Nan) 
x = cell2mat(pay_factor_dep_density_1st(:,:));
x2 = x';
x3 = x2(~isnan(x2));
xlswrite('density_manual_1st_19965.xlsx',x3)




% Do this if there are empty cell  
x5 = pay_factor_dep_density_1st;
empties = cellfun('isempty',x5);
% Now change all the empty cells in A from empty strings '' to double NaN
x5(empties) = {NaN};
x = cell2mat(x5(:,:));
x2 = x';
x3 = x2(~isnan(x2));
xlswrite('density_manual_1st_19965.xlsx',x3)

%% Density calculation (last value)

%%%%%%%%%%% First check the pay_factor_dep_density_1st for nan/empty then
%%%%%%%%%%% run below code accordingly

%  Do this if there are no empty cell (only Nan) 
x = cell2mat(pay_factor_dep_density_last(:,:));
x2 = x';
x3 = x2(~isnan(x2));
xlswrite('density_manual_last_19965.xlsx',x3)




% Do this if there are empty cell  
x5 = pay_factor_dep_density_last;
empties = cellfun('isempty',x5);
% Now change all the empty cells in A from empty strings '' to double NaN
x5(empties) = {NaN};
x = cell2mat(x5(:,:));
x2 = x';
x3 = x2(~isnan(x2));
xlswrite('density_manual_last_19965.xlsx',x3)

%% Payment calculation 1st

[num_test,~,~] = xlsread('19965 Lot 17 405-435A Dept', 'Testing Summary') ;

[num_gr,~,~] = xlsread('Lot_group_19965', 'Sheet1') ;

AirVoids_all_dep_dens_ai = xlsread('density_manual_1st_19965.xlsx','Sheet1');


[num_pay,~,~] = xlsread('19965 Lot 17 405-435A Dept', 'Quantities') ;
[~,~,raw_usl] = xlsread('19965 Lot 17 405-435A Dept', 'Proj Info') ;

e195 = raw_usl{66,58};
e196 = raw_usl{66,55};
f195 = raw_usl{68,58};
f196 = raw_usl{68,55};

% e195 = 5;
% e196 = 3;
% f195 = 100;
% f196 = 15;

[~,~,raw_MLD] = xlsread('19965 Lot 17 405-435A Dept', 'Spec Limits') ;


% n195 = 97;
% n196 = 92;

n195 = raw_MLD{10,4};
n196 = raw_MLD{10,3};

%b295_all = [2766.38;  2136.76; 1591.32; 2874.03; 1467.2];
%b296 = 88.00;

%% Payment calculation last

[num_test,~,~] = xlsread('19965 Lot 17 405-435A Dept', 'Testing Summary') ;

[num_gr,~,~] = xlsread('Lot_group_19965', 'Sheet1') ;

AirVoids_all_dep_dens_ai = xlsread('density_manual_last_19965.xlsx','Sheet1');

[num_pay,~,~] = xlsread('19965 Lot 17 405-435A Dept', 'Quantities') ;

[~,~,raw_usl] = xlsread('19965 Lot 17 405-435A Dept', 'Proj Info') ;

e195 = raw_usl{66,58};
e196 = raw_usl{66,55};
f195 = raw_usl{68,58};
f196 = raw_usl{68,55};

% b296 = num_pay(1,end);
% 
% 
% for i = 1:length(num_pay(:,2))
%     
%     quantity_1 = num_pay(:,2)==i;
%     quantity_2 = num_pay(quantity_1);
%     quantity_3(i)= sum(quantity_2);
%     quantity_4 = quantity_3(quantity_3~=0);
%     b295_all = quantity_4';
%     
% end

% e195 = 5;
% e196 = 3;
% f195 = 100;
% f196 = 15;

[~,~,raw_MLD] = xlsread('19965 Lot 17 405-435A Dept', 'Spec Limits') ;

% n195 = 97;
% n196 = 92;

n195 = raw_MLD{10,4};
n196 = raw_MLD{10,3};


% b295_all = [2766.38;  2136.76; 1591.32; 2874.03; 1467.2];
% b296 = 88.00;

%% Manual reported payment 

pay_manual = [ 18998.41, 95669.62, 212986.66, 102522.79, 128874.55, 152189.07, 130736.68, 121047.05, 212918.78, 123295.36, 141132.60, 117777.14 ,114442.18 ,135760.36 ,251675.46 ,113896.83 ,86871.17 ];



%% Plot payment first and last value without Label
% figure(1)
% payment_plot = [Payment_1st_values; Payment_last_values; pay_manual]';
% hb = bar(payment_plot);
% hb(1).FaceColor = 'g';
% hb(2).FaceColor = 'r';
% hb(3).FaceColor = 'y';
% xlabel('Lot Number','FontSize', 20)
% ylabel('US Dollar ($)','FontSize', 20)
% title('Project #19965','FontSize', 20)
% legend('Required Payment','Manipulated Payment','Reported Payment','FontSize', 15)

% saveas(gcf,'19965_ori.png')

%% Run if needed to see payment value
payment_plot_2 = table(payment_plot);
writetable(payment_plot_2,'Payment_19965.xlsx','Sheet',1)

%% Plot payment first and last value with Label (contrcator and department)

figure(1)
payment_plot = [Payment_1st_values; Payment_last_values; pay_manual]';
hb = bar(payment_plot);
hb(1).FaceColor = 'g';
hb(2).FaceColor = 'r';
hb(3).FaceColor = 'y';
xlabel('Lot Number','FontSize', 20)
ylabel('US Dollar ($)','FontSize', 20)
title('Project #19965','FontSize', 20)
legend('Required Payment','Manipulated Payment','Reported Payment','FontSize', 15, 'Location', 'northwest')

Payment_1st_accept_2 = cellstr(Payment_1st_accept);
Payment_last_accept_2 = cellstr(Payment_last_accept);

% x1 = (1:17)';

numbersToAdd1 = [Payment_1st_accept_2(:,7),Payment_last_accept_2(:,7)];
barWidth = hb.BarWidth;
numCol = size(payment_plot,2);

cnt = 0;
for ii =1:length(numbersToAdd1)
    cnt = cnt + 1;
    xPos = [cnt - barWidth/3, cnt ];
    idx = 1;
 
%     for kk = 1:length(idx)-1
    val = numbersToAdd1(cnt,idx);
    val2 = val{1};
    val3 = numbersToAdd1(cnt,idx+1);
    val4 = val3{1};
    y1 = payment_plot(cnt,idx);
    y2 = payment_plot(cnt,idx+1);
    text(xPos(1), y1 + 5000, convertCharsToStrings(val2(1)),'Color','green','FontSize',14,'FontWeight','bold','Rotation',90);
    text(xPos(2), y2 + 5000, convertCharsToStrings(val4(1)),'Color','red','FontSize',14,'FontWeight','bold','Rotation',90);
%     end
    %         idx = idx +1;
   
end

savefig('19965.fig')

% cnt = 0;
% for ii =1:length(numbersToAdd1)
%     cnt = cnt + 1;
%     xPos = [cnt - barWidth/2, cnt + barWidth / 2];
%     idx = 1;
%     for jj = xPos(1:end)
%         
%         val = numbersToAdd1(cnt,idx);
%         val2 = val{1}
%         y = payment_plot(cnt,idx);
%         text(jj, y + 1, convertCharsToStrings(val2),'Rotation',90,'Color','green');
%         
%         idx = idx +1;
%     end     
% end
% 
% 
% 
% 
% for i1 = 1:length(Payment_1st_values)
%     
%     text(x1(i1),payment_plot(i1,1)+5000,convertCharsToStrings(Payment_1st_accept_2{i1,7}(1)),'vert','top','horiz','left','Color','green','FontSize',12,'FontWeight','bold','Rotation',90)
% %      set(h2,'Rotation',90)
%     text(x1(i1),payment_plot(i1,3)+5000,convertCharsToStrings(Payment_last_accept_2{i1,7}(1)),'vert','top','horiz','left','Color','red','FontSize',12,'FontWeight','bold','Rotation',90)
% %     
%     
% end

%% Data for Heatmap

xlswrite('Heatmap_19965_Cont.xlsx',pay_factor_cont_1st);
xlswrite('Heatmap_19965_Dep.xlsx',pay_factor_dep_1st);
xlswrite('Heatmap_19965_Pay.xlsx',Payment_1st_accept_2);

%% Plot payment first and last value with Label (entity 1 and entity 2)



figure(1)
payment_plot = [Payment_1st_values; Payment_last_values; pay_manual]';
hb = bar(payment_plot);
hb(1).FaceColor = 'g';
hb(2).FaceColor = 'r';
hb(3).FaceColor = 'y';
xlabel('Lot Number','FontSize', 20)
ylabel('US Dollar ($)','FontSize', 20)
title('Project #1','FontSize', 20)
legend('Required Payment','Manipulated Payment','Reported Payment','FontSize', 15, 'Location', 'northwest')

Payment_1st_accept_2 = cellstr(Payment_1st_accept);
Payment_last_accept_2 = cellstr(Payment_last_accept);

% x1 = (1:17)';

numbersToAdd1 = [Payment_1st_accept_2(:,7),Payment_last_accept_2(:,7)];
numbersToAdd2 = replace(numbersToAdd1,'State','E1');
numbersToAdd3 = replace(numbersToAdd2,'Contractor','E2');
barWidth = hb.BarWidth;
numCol = size(payment_plot,2);

cnt = 0;
for ii =1:length(numbersToAdd3)
    cnt = cnt + 1;
    xPos = [cnt - barWidth/3, cnt ];
    idx = 1;
 
%     for kk = 1:length(idx)-1
    val = numbersToAdd3(cnt,idx);
    val2 = val{1};
    val3 = numbersToAdd3(cnt,idx+1);
    val4 = val3{1};
    y1 = payment_plot(cnt,idx);
    y2 = payment_plot(cnt,idx+1);
    text(xPos(1), y1 + 5000, convertCharsToStrings(val2),'Color','green','FontSize',14,'FontWeight','bold','Rotation',90);
    text(xPos(2), y2 + 5000, convertCharsToStrings(val4),'Color','red','FontSize',14,'FontWeight','bold','Rotation',90);
%     end
    %         idx = idx +1;
   
end

savefig('19965_entity_1_entity_2.fig')


% cnt = 0;
% for ii =1:length(numbersToAdd1)
%     cnt = cnt + 1;
%     xPos = [cnt - barWidth/2, cnt + barWidth / 2];
%     idx = 1;
%     for jj = xPos(1:end)
%         
%         val = numbersToAdd1(cnt,idx);
%         val2 = val{1}
%         y = payment_plot(cnt,idx);
%         text(jj, y + 1, convertCharsToStrings(val2),'Rotation',90,'Color','green');
%         
%         idx = idx +1;
%     end     
% end
% 
% 
% 
% 
% for i1 = 1:length(Payment_1st_values)
%     
%     text(x1(i1),payment_plot(i1,1)+5000,convertCharsToStrings(Payment_1st_accept_2{i1,7}(1)),'vert','top','horiz','left','Color','green','FontSize',12,'FontWeight','bold','Rotation',90)
% %      set(h2,'Rotation',90)
%     text(x1(i1),payment_plot(i1,3)+5000,convertCharsToStrings(Payment_last_accept_2{i1,7}(1)),'vert','top','horiz','left','Color','red','FontSize',12,'FontWeight','bold','Rotation',90)
% %     
%     
% end














































