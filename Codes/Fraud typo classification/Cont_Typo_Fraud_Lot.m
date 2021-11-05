function [Result_Cont,Count_Cont_major_minor_moderate] = Cont_Typo_Fraud_Lot(final_result_cont,pay_affect_dep )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%final_result_major =final_result_dep;  %%dep data
final_result_major =final_result_cont; %% cont data

[~,~,a3] = unique(final_result_major(:,2));
C2 = accumarray(a3,1:size(final_result_major,1),[],@(r){final_result_major(r,:)});


final_matrix = table;

            counter_dep_major = 0;
            counter_dep_moderate = 0;
            counter_dep_minor = 0;

            
            counter_major_typo = 0;
            counter_major_fraud = 0;
            counter_moderate_typo = 0;
            counter_moderate_fraud = 0;
            counter_minor_typo = 0;
            counter_minor_fraud = 0;


for i  =1:length(C2)
    curcell = C2{i};
    [~,~,a6] = unique(curcell(:,1));
    C3 = accumarray(a6,1:size(curcell,1),[],@(r){curcell(r,:)});
    
    
    for m = 1:length(C3)
        
        cursample=C3{m};
        row_size = size(cursample);
        casetype = table(repmat(string('Fraud'),[row_size(1) 1]));
        casetype.Properties.VariableNames{'Var1'} = 'Var_error';
        timegap = table(repmat(string('Nan'),[row_size(1) 1]));
        timegap.Properties.VariableNames{'Var1'} = 'Var_time_gap';
        
        ap = split(cursample{1,1},"(");
        ap2 = split(ap{end,1},")");
        ap3 = ap2{1,1};
        ap4 = str2num(ap3);
        
        lot_num = table(repmat(ap4,[row_size(1) 1]));
        lot_num.Properties.VariableNames{'Var1'} = 'Test_No';
        
        
        
        cursample = [cursample(:,1),cursample(:,2),cursample(:,3),cursample(:,4),casetype(:,1),timegap(:,1)];
        [row, ~] = size(cursample);
        
        effect_type = table(repmat("Major",[row_size(1) 1]));
        effect_type.Properties.VariableNames{'Var1'} = 'Var_effect_type';

        cursample = [cursample(:,1),cursample(:,2),cursample(:,3),cursample(:,4), cursample(:,6), effect_type(:,1), cursample(:,5),lot_num(:,1)];
        
        
        value = cell2mat(table2array(cursample(1,2)));
   for o=1:height(pay_affect_dep(:,1))
       if(strcmp(cell2mat(table2array(pay_affect_dep(o,1))),value))
           cursample(:,6) = {cell2mat(table2array(pay_affect_dep(o,6)))};
           break
       end
   end
        
        if row == 1
            %fprintf('Only one single sample, So no fraud/typo case \n');
            %             counter1 = counter1 +1;
%             cc = row==1;
%             idx5 = C3(cursample(cc,:));
%             
%             G = findgroups(cursample)
           % [G,TID] = findgroups(cell2table(C3))
           %cursample(:,9) = {"Single element"};
            
        else
            
               
            
            cursample = sortrows(cursample,4);
            cursample_dummy = cursample(1,:);
                        
            cursample = [cursample; cursample_dummy];  %note the semicolon for vertical concatenation
            
            
            
            
            
            for n = 1:height(cursample)-1
                
                
%                 time22 = table2array(cursample(:,4));
%                 dd2 = datestr(time22,'mm/dd/yyyy HH:MM');
%                 ddd2 =abs( etime(datevec(time22{n}),datevec(time22{n+1})));
%                 cursample(1,5) = {"Time start"};
%                 cursample(n+1,5) = {ddd2}; %second to minute
                
                x = str2double(cell2mat(table2array(cursample(n,3))));
                y = str2double(cell2mat(table2array(cursample(n+1,3))));
                
                
                x_low = 0.8*x;
                x_high = 1.2 *x;
                
                y_low = 0.8*y;
                y_high = 1.2 *y;
                
                
                tf1 = isempty(x);
                tf2 = isempty(y);
                
                tf3 = isnan(x);
                
                a=str2double(regexp(num2str(x),'\d','match'));
                b = str2double(regexp(num2str(y),'\d','match'));
                
                
                
                if numel(a) == numel(b)
                    
                    D = abs(bsxfun(@eq, a, b));
                    iD = find(D == 0);
                    %iD2 = find(D == 1); % check if both values are exact same
                    
                    a2 = sort(a(D==0));
                    b2 = sort(b(D==0));
                    
                   
                    
                    if numel(iD) == 1
                        
%                          cursample_copy_1(n) = cursample(n;n+1);
%                         
%                         for p = 1:height(cursample_copy_1)-1 
                            
                            yy1 = typo_case_1(x,y,x_low,x_high,y_low,y_high);
                            yy2 = typo_case_2(a,b,iD);

                            if yy1==1|| yy2==1
                                fprintf('Typing error \n')
                                cursample(n+1,7) = {"Typo"};
                            end

                            
% %                             if y <= x_low || y >= x_high %case 7
% %                                 fprintf('Typing error \n')
% %                                 cursample_copy_1(n+1,5) = {"Typo"};
% %                                 
% %                             elseif x <= y_low || x >= y_high % if x =4657, y =2657
% %                                 fprintf('Typing error \n')
% %                                 cursample_copy_1(n+1,5) = {"Typo"};
% %                             end
% %                         end
%                         
%                         if find(strcmp('Typo',cursample_copy_1{2,5}))==1
%                             cursample_copy_1(1,5) = {"Typo"};
%                         end
%                         
% %                         cursample_check_1 = cursample_copy_1(1:end-1,:);
%                         
%                         cursample_copy_2 = cursample;
%                         
% %                         for q = 1:height(cursample_copy_2)-1 
%                             
% %                         if a(iD)==0
% %                             ss = [1,2];
% %                         elseif a(iD)==1
% %                             ss= [0,2,4];
% %                         elseif a(iD)==2
% %                             ss= [0,1,3,5];
% %                         elseif a(iD)==3
% %                             ss= [2,6];
% %                         elseif a(iD)==4
% %                             ss= [1,5,7];
% %                         elseif a(iD)==5
% %                             ss= [2,4,6,8];
% %                         elseif a(iD)==6
% %                             ss= [3,5,9];
% %                         elseif a(iD)==7
% %                             ss= [4,8];
% %                         elseif a(iD)==8
% %                             ss= [5,7,9];
% %                         elseif a(iD)== 9
% %                             ss= [6,8];
% %                             
% %                         
% %                         end
% %                         
% %                         res = ismember(b(iD),ss);
% %                         for j = 1:length(res)
% %                             if res == 1
% %                                 fprintf('Typing error \n')
% %                                 cursample_copy_2(n+1,5) = {"Typo"};
% %                                 %counter2 = counter2 +1;
% %                                 %                         else
% %                                 %                             fprintf('Not typing error \n')
% %                                 %                             %counter3 = counter3 +1;
% %                             end
% %                         end
% %                         end
%                         if find(strcmp('Typo',cursample_copy_2{2,5}))==1
%                             cursample_copy_2(1,5) = {"Typo"};
%                         end
%                         
% %                         cursample_check_2 = cursample_copy_2(1:end-1,:);
% %                         
%                         xyz_1 = 0;
%                         xyz_2 = 0;
%                         
%                         if strcmp('Typo',cursample_copy_1{:,5})==1
%                                 xyz_1 = 1;   
%                         end
%                         if strcmp('Typo',cursample_copy_2{:,5})==1  
%                                 xyz_2 = 1;                                
%                         end
%                         
%                         if xyz_1 == 1 &&  xyz_2 == 0
%                             cursample = cursample_copy_1;                        
%                         elseif xyz_1 == 0 &&  xyz_2 == 1
%                             cursample = cursample_copy_2;
%                         else
%                             cursample = cursample_copy_1; 
%                         end
%                             
                        
                        %                     elseif numel(iD2) == size(D) %check if exact same value was typed twice
                        %
                        %                             fprintf('Typing error \n')
                        
                    else
                        if a2 == b2  %% case3
                            fprintf('Typing error \n')
                            cursample(n+1,7) = {"Typo"};
                            
                        elseif a == b %case4 and also will ensure 12.345 --> 123.45 is a typo case
                            fprintf('Typing error \n')
                            cursample(n+1,7) = {"Typo"};
                            
                        elseif y <= x_low || y >= x_high %case 7
                            fprintf('Typing error \n')
                            cursample(n+1,7) = {"Typo"};
                            
                        elseif x <= y_low || x >= y_high % if x =4657, y =2657
                            fprintf('Typing error \n')
                            cursample(n+1,7) = {"Typo"};
                        end
                    end
                    
                    
                    
                else
                    
%                     if (tf3 == 1) && (tf2 == 0) %% case 4
%                         fprintf('Typing error \n')
%                         cursample(n+1,7) = {"Typo"};
                        
                    if (tf1 == 1) && (tf2 == 0) %% case 4
                        fprintf('Typing error \n')
                        cursample(n+1,7) = {"Typo"};
                   
                        
                    elseif y <= x_low || y >= x_high %% case2
                        fprintf('Typing error \n')
                        cursample(n+1,7) = {"Typo"};
                    elseif x <= y_low || x >= y_high % if x =4657.5, y =2657
                            fprintf('Typing error \n')
                            cursample(n+1,7) = {"Typo"};
                    end
                    
                    
                    
                    % fprintf('Number of elements does not match \n')
                    %counter5 = counter5 +1;
                end   
                
                
                
                
            end
            
%%

            if find(strcmp('Typo',cursample{2,7}))==1
                cursample(1,7) = {"Typo"};
            end
            
            idx4 = strcmp('Typo',cursample{:,7});
            
            if any(idx4 == 0)
                cursample(:,7) = {"Fraud"};
            end
            
            cursample(end,:) = []; %deleting the dummy column (extra last row)

            
        end
        
        
        
        if row ==2
            
            cursample = sortrows(cursample,4);
            if numel(a) == numel(b)
            
            x = str2double(cell2mat(table2array(cursample(1,3))));
            y = str2double(cell2mat(table2array(cursample(end,3))));
            
            a=str2double(regexp(num2str(x),'\d','match'));
            b = str2double(regexp(num2str(y),'\d','match'));
            
                
                D = abs(bsxfun(@eq, a, b));
                iD = find(D == 0);
                %iD2 = find(D == 1); % check if both values are exact same
                
                if numel(iD) == 1
                    
                    ss=[];
                    if a(iD)==1
                        ss = [7,9];
                    elseif a(iD)==7
                        ss = [1,9];
                    elseif a(iD)==9
                        ss = [1,7];
                    elseif a(iD)==6
                        ss= [0,8];
                    elseif a(iD)==8
                        ss= [0,6];
                    elseif a(iD)==0
                        ss= [6,8];
                    end
                    
                    res = ismember(b(iD),ss);
                    for j = 1:length(res)
                        if res == 1
                            fprintf('Typing error \n')
                            cursample(:,7) = {"Typo"};
                            %counter2 = counter2 +1;
                            %                         else
                            %                             fprintf('Not typing error \n')
                            %                             %counter3 = counter3 +1;
                        end
                    end
                    
                end
            end
 
        end
        
        if row ==2
            
            cursample = sortrows(cursample,4);
            x1 = str2double(cell2mat(table2array(cursample(1,3))));
            y1 = str2double(cell2mat(table2array(cursample(2,3))));
            
            tf7 = isnan(x1);
            tf8 = isempty(y1);
            
            if (tf7 == 1) && (tf8 == 0) %% case 4
                        fprintf('Typing error \n')
                        cursample(1,7) = {"Typo"};
                        cursample(2,7) = {"Typo"};
            end
            
        end
        

        if row ==2
            
            cursample = sortrows(cursample,4);
            x1 = str2double(cell2mat(table2array(cursample(1,3))));
            y1 = str2double(cell2mat(table2array(cursample(2,3))));
            
            tf7 = isempty(x1);
            tf8 = isempty(y1);
            
            if (tf7 == 1) && (tf8 == 0) %% case 4
                        fprintf('Typing error \n')
                        cursample(1,7) = {"Typo"};
                        cursample(2,7) = {"Typo"};
            end
            
        end        
        
        
        
        
        if row ==3
            
            cursample = sortrows(cursample,4);
            
            x = str2double(cell2mat(table2array(cursample(1,3))));
            y = str2double(cell2mat(table2array(cursample(2,3))));
            z = str2double(cell2mat(table2array(cursample(end,3))));
                      
            aa = 0; ab = 0; 
              
            if x==z
                aa=1;
            end
            
            if x == y
                ab = 1;
            end
            
            if aa==1 && ab==0
                cursample(:,7) = {"Fraud"};
            end
        
        end
        
        
            final_matrix = [final_matrix; cursample];
            
            
            
            if strcmp('Major',cursample{:,6})==1
                
                counter_dep_major = counter_dep_major +1;
                
                if strcmp('Typo',cursample{:,7})==1
                    
                    counter_major_typo = counter_major_typo+1;
                else
                    counter_major_fraud = counter_major_fraud+1;
                end
                
            elseif strcmp('Moderate',cursample{:,6})==1
                
                counter_dep_moderate = counter_dep_moderate +1;
                
                 if strcmp('Typo',cursample{:,7})==1
                    
                    counter_moderate_typo = counter_moderate_typo+1;
                else
                    counter_moderate_fraud = counter_moderate_fraud+1;
                end
                
            elseif strcmp('Minor',cursample{:,6})==1
                
                counter_dep_minor = counter_dep_minor +1;
                
                if strcmp('Typo',cursample{:,7})==1
                    
                    counter_minor_typo = counter_minor_typo+1;
                else
                    counter_minor_fraud = counter_minor_fraud+1;
                end
                
            end
            
            Count_Cont_major_minor_moderate = [ counter_dep_major,counter_major_typo,counter_major_fraud, counter_dep_moderate,counter_moderate_typo,counter_moderate_fraud, counter_dep_minor,counter_minor_typo,counter_minor_fraud];

            
            
    end
    
end



% Header = {'Only one single sample; So no fraud/typo case'; 'Typing error';'Not typing error';'Number of elements changes more than once';'Number of elements does not match';'Time more than 20 second'};
%
% Count_Number = [counter1; counter2; counter3; counter4; counter5; counter6];
%
% Fraud_Typo_Result = table(Header, Count_Number);
%
% Header2 = categorical(Header);

% size2 = size(final_matrix);
% 
% effect_type = table(repmat("Major",[size2(1) 1]));
% effect_type.Properties.VariableNames{'Var1'} = 'Var_effect_type';
% 
% final_matrix2 = [final_matrix(:,1),final_matrix(:,2),final_matrix(:,3),final_matrix(:,4), effect_type(:,1), final_matrix(:,5), final_matrix(:,6) ];
% 
%                             for r = 1:length(final_matrix2(:,2))
% %                                 fprintf('Typing error \n')
%                                rr =strcmp(pay_affect_dep.Cell, {'Minor'})
% %                                if  rr =strcmp(final_matrix2.Var_effect_type, {'Minor'});
% %                                 
% %                                 cursample(n+1,5) = {"Typo"};
%                             end

Result_Cont = sortrows(final_matrix,'Var_effect_type');

% writetable(Result,'Result_dep_19965.xlsx')
% 
% writetable(Result,'Result_cont_19965.xlsx')
% 
% writetable(Result,'Result_dep_19112_Dist 3_BottomLift.xlsx')

% counter_dep_major = 0;
% counter_dep_moderate = 0;
% counter_dep_minor = 0;
% 
% 
%     for k = 1:height(Result)
%         [~,~,a9] = unique(Result(:,2));
%         C4 = accumarray(a9,1:size(Result,1),[],@(r){Result(r,:)});
%         
%         for l  =1:length(C4)
%             curcell_count = C4{l};
%             [~,~,a12] = unique(curcell_count(:,1));
%             C5 = accumarray(a12,1:size(curcell_count,1),[],@(r){curcell_count(r,:)});
%             
%             for v = 1:length(C5)
%         
%                 cursample_count=C5{v};
%                 
%                 if strcmp('Major',cursample_count{:,6})==1
%                     
%                     counter_dep_major = counter_dep_major +1;
%                     
%                 elseif strcmp('Moderate',cursample_count{:,6})==1
%                     
%                     counter_dep_moderate = counter_dep_moderate +1;
%                     
%                 elseif strcmp('Minor',cursample_count{:,6})==1
%                     
%                     counter_dep_minor = counter_dep_minor +1;
%                     
%                 end
%                 
%             end
%             
%             
%             
%         
%         end
%         
%     end



end




% major = []
% minor = []
% moderate = []
% for i=1:height(pay_affect_dep(:,1))
%     disp(table2array(pay_affect_dep(i,6)))
%     if(strcmp(cell2mat(table2array(pay_affect_dep(i,6))),'Major'))
%         major = [major; cell2mat(table2array(pay_affect_dep(i,1)))]
%     elseif(strcmp(cell2mat(table2array(pay_affect_dep(i,6))),'Moderate'))
%        moderate = [moderate; cell2mat(table2array(pay_affect_dep(i,1)))] 
%     else
%         minor = [minor; cell2mat(table2array(pay_affect_dep(i,1)))]
%     end
% end

% for i=1:height(final_matrix2(:,2))
%     value = cell2mat(table2array(final_matrix2(i,2)))
%    for j=1:height(pay_affect_dep(:,1))
%        if(strcmp(cell2mat(table2array(pay_affect_dep(j,1))),value))
%            final_matrix2(i,5) = {cell2mat(table2array(pay_affect_dep(j,6)))}
%            break
%        end
%    end
% end
