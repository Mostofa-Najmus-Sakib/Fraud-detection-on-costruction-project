
data_low = xls2struct('test.xlsx');


data_low = xls2struct('data_test_low.xlsx','structArray');
data_high = xls2struct('data_test_high.xlsx','structArray');
data_neutral = xls2struct('data_check_2.xlsx','structArray');
%data_neutral = xls2struct('data_check_1.xlsx','structArray');

nsamples = 1000;

data = xls2struct('data_check.xlsx','structArray');

cont_data = readtable('19965 - 19997_Dist 3_Contractor WB_DateMod_20180926 102843.xlsx','Sheet','Audit','ReadVariableNames',false);
%contractor data
dep_data = readtable('19965 - 19997_Dist 3_Department WB_DateMod_20180926 101958.xlsx','Sheet','Audit','ReadVariableNames',false);
%department data

cont_data = readtable('13947_Dist 3_Contractor WB_DateMod_20181213 155739.xlsx','Sheet','Audit','ReadVariableNames',false);
%contractor data

dep_data = readtable('13947_Dist 3_Department WB_DateMod_20181213 155827.xlsx','Sheet','Audit','ReadVariableNames',false);
%department data

cont_data = readtable('13879_Dist 2_Contractor WB_DateMod_20180925 103659.xlsx','Sheet','Audit','ReadVariableNames',false);
%contractor data

dep_data = readtable('13879_Dist 2_Department WB_DateMod_20190409 165123.xlsx','Sheet','Audit','ReadVariableNames',false);
%department data

cont_data = readtable('18881_Dist 4_Contractor WB_DateMod_20190403 164901.xlsx','Sheet','Audit','ReadVariableNames',false);
%contractor data

dep_data = readtable('18881_Dist 4_Department WB_DateMod_20181022 105044.xlsx','Sheet','Audit','ReadVariableNames',false);
%department data

cont_data = readtable('20758_Cont_Audit.xlsx','Sheet','Audit','ReadVariableNames',false);
%contractor data

dep_data = readtable('20758_Dept_Audit.xlsx','Sheet','Audit','ReadVariableNames',false);
%department data

dep_data = readtable('12964 Dept Workbook Lot 5.xlsx','Sheet','Notes','ReadVariableNames',false);
%department data

dep_data = readtable('13479_Dep_Audit Data.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%department data

cont_data = readtable('13852 - Lot 4 - Contractor QASP v1.1 workbook_2018-08-15.xlsx','Sheet','Notes','ReadVariableNames',false);
%contractor data

dep_data = readtable('13852 - Lot 4 - Dept FINAL QASP v1.1 workbook_2018-08-13.xlsx','Sheet','Notes','ReadVariableNames',false);
%department data

cont_data = readtable('13879_Cont_Audit Data.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%contractor data

dep_data = readtable('13879_Dep_Audit Data.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%department data

% 19112 - bottomlift
cont_data = readtable('19112_Contractor Workbook_BottomLift.xlsx','Sheet','Notes','ReadVariableNames',false);
%contractor data

dep_data = readtable('19112_Dist 3_BottomLift_Department WB_DateMod_20181026 210449.xlsx','Sheet','Audit','ReadVariableNames',false);
%department data

% 19112 - toplift
cont_data = readtable('19112_Dist 3_Contractor WB_DateMod_20181029 120249.xlsx','Sheet','Audit','ReadVariableNames',false);
%contractor data

dep_data = readtable('19326_Dist 1_Department WB_DateMod_20190121 141734.xlsx','Sheet','Audit','ReadVariableNames',false);
%department data

cont_data = readtable('19548_Dist 4_Contractor WB_DateMod_20180907 092504.xlsx','Sheet','Audit','ReadVariableNames',false);
%contractor data
dep_data = readtable('19548_Dist 4_Department WB_DateMod_20181212 161118.xlsx','Sheet','Sheet5','ReadVariableNames',false);
%department data

dep_data = readtable('19892_Verification_UNLOCKED.xlsx','Sheet','Notes','ReadVariableNames',false);
%department data

cont_data = readtable('19926_QASP v1.1 workbook_2018-08-06_Lund_HK_UNLOCKED.xlsx','Sheet','Notes','ReadVariableNames',false);
%contractor data
dep_data = readtable('19926_Verification WB_MTI_FINAL_UNLOCKED.xlsx','Sheet','Notes','ReadVariableNames',false);
%department data

cont_data = readtable('19939_Cont_Audit.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%contractor data
dep_data = readtable('19939_Dep_Audit.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%department data

cont_data = readtable('19947_Cont_Audit.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%contractor data
dep_data = readtable('19947_Dep_Audit.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%department data

cont_data = readtable('19986_Cont_Audit.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%contractor data
dep_data = readtable('19986_Dep_Audit.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%department data

cont_data = readtable('20685 405-435A Department Workbook Lot 13.xlsx','Sheet','Notes','ReadVariableNames',false);
%contractor data
dep_data = readtable('20685 405-435A ICA Workbook Lot 8.xlsx','Sheet','Notes','ReadVariableNames',false);
%department data

dep_data = readtable('20155 QASP v1_Dept.xlsx','Sheet','Sheet1','ReadVariableNames',false);
%department data

dep_data = readtable('19917_Verification_UNLOCKED.xlsx','Sheet','Notes','ReadVariableNames',false);
%department data


pay_affect_dep = readtable('Cells Affecting Payment.xlsx','Sheet','D(n)','ReadVariableNames',true);

pay_affect_cont = readtable('Cells Affecting Payment.xlsx','Sheet','QC(n)','ReadVariableNames',true);

pay_affect_dens = readtable('Cells Affecting Payment.xlsx','Sheet','D-Dens(n)','ReadVariableNames',true);


final_result_major = ITD_dep_major(dep_data,pay_affect_dep);
final_result_minor = ITD_dep_minor(dep_data,pay_affect_dep);
final_result_moderate = ITD_dep_moderate(dep_data,pay_affect_dep);

final_result_major = ITD_cont_major(cont_data,pay_affect_cont);
final_result_minor = ITD_cont_minor(cont_data,pay_affect_cont);
final_result_moderate = ITD_cont_moderate(cont_data,pay_affect_cont);


final_result_major = final_result_major(45:47,:);

filename = 'Result_dep_19965_check.xlsx';
writetable(Result_Dep,filename,'Sheet',1)

filename = 'Result_cont_19965_check.xlsx';
writetable(Result_Cont,filename,'Sheet',1)









