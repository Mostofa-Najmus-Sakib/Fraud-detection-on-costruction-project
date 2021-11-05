%% Dep Precison Test

[a1,a2,a3] = xlsread('Heatmap_18881_Dep') ;
figure(2)
cdata2 = a1(:,5:7)';
xvalues2 = a3(2:end,1)';

xvalues2_1 = a1(:,1)';
xvalues2_2 = num2cell(xvalues2_1);

yvalues2 = {'Avg Gmm','Avg Gmb','Acceptable Pb'};
h1 = heatmap(xvalues2_2,yvalues2,cdata2,'CellLabelColor','none');
h1.ColorbarVisible = 'off';
h1.ColorLimits = [1 2];
% set(get(gca,'YLabel'),'Rotation',90)
map = [0 1 0
    1 0 0];
colormap(map)

Title.FontSize = 20;
h1.Title = 'Pass/Fail for Gmm/Gmb/Pb Precision Criterion (Department)';

XLabel.FontSize = 20;
h1.XLabel = 'Test Number';
% h1.YLabel = 'Colors';


savefig('18881_heatmap_param_Dep.fig')


%% Contractor Precison Test

[a1,a2,a3] = xlsread('Heatmap_18881_Cont') ;
figure(3)
cdata2 = a1(:,5:7)';
xvalues2 = a3(2:end,1)';

xvalues2_1 = a1(:,1)';
xvalues2_2 = num2cell(xvalues2_1);

yvalues2 = {'Avg Gmm','Avg Gmb','Acceptable Pb'};
h1 = heatmap(xvalues2_2,yvalues2,cdata2,'CellLabelColor','none');
h1.ColorbarVisible = 'off';
h1.ColorLimits = [1 2];
% set(get(gca,'YLabel'),'Rotation',90)
map = [0 1 0
    1 0 0];
colormap(map)

Title.FontSize = 20;
h1.Title = 'Pass/Fail for Gmm/Gmb/Pb Precision Criterion (Contractor)';

XLabel.FontSize = 20;
h1.XLabel = 'Test Number';
% h1.YLabel = 'Colors';


savefig('18881_heatmap_param_Cont.fig')


%% Density Precision Test

[a4,a5,a6] = xlsread('Heatmap_18881_Pay') ;
figure(4)
cdata2 = a4(:,1:end)';
% % xvalues2 = a6(2:end,1)'  %chnageeeeee this
% xvalues2 = (1:17)

xvalues2_1 = (1:4); % chnageeeeeeeee thissssssss
xvalues2_2 = num2cell(xvalues2_1);

yvalues2 = {'AirVoid_PWL','VMA_PWL','MLD_PWL'};



h2 = heatmap(xvalues2_2,yvalues2,cdata2,'CellLabelColor','none');
h2.ColorbarVisible = 'off';
% set(get(gca,'YLabel'),'Rotation',90)
h2.ColorLimits = [1 3];
map = [0 1 0; 1 0 0; 0 0 0];
colormap(map)

h2.Title = 'Acceptance/Rejection/Stop Production for Air Void/VMA/Density - PWL';
h2.XLabel = 'Lot Number';
% h2.YLabel = 'Colors';
% caxis([0 2]);
savefig('18881_heatmap_param_PWL.fig')


