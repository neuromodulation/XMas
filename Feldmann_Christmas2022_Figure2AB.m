%% Feldmann et al. - Figure 2AB
% Written July 27th 2022 by Wolf-Julian Neumann for Feldmann et al., 2022
% No further dependencies required
% These group results contain only aggregated data and are therefore
% available without requirement for dedicated sharing agreements. 
% Please contact us, in case you are interested in more data 

load Feldmann_Christmas2022.mat
figure
subplot(1,2,1)
b1=bar(Feldmann_Christmas2022.Figure2AB.day_time,(200.*Feldmann_Christmas2022.Figure2AB.multiple_comparisons_adjusted_hourly_significance)-100,'barwidth',1,'facecolor',[.9 .9 .9],'edgecolor',[.9 .9 .9],'BaseValue',-100);
hold on
p1=plot(Feldmann_Christmas2022.Figure2AB.day_time,Feldmann_Christmas2022.Figure2AB.hourly_beta_christmas_eve,'linewidth',3,'color',Feldmann_Christmas2022.Figure2AB.colormap(2,:));
hold on
p2=plot(Feldmann_Christmas2022.Figure2AB.day_time,Feldmann_Christmas2022.Figure2AB.hourly_beta_non_christmas_average,'linewidth',3,'color',Feldmann_Christmas2022.Figure2AB.colormap(1,:));
ylabel('Relative beta power [%]')
legend([p1 p2 b1],{'Christmas Eve','Non-Christmas average','p < 0.05'});
subplot(1,2,2)
b2=bar(Feldmann_Christmas2022.Figure2AB.day_time,(60.*Feldmann_Christmas2022.Figure2AB.multiple_comparisons_adjusted_hourly_significance)-30,'barwidth',1,'facecolor',[.9 .9 .9],'edgecolor',[.9 .9 .9],'BaseValue',-30);
hold on
p3=plot(Feldmann_Christmas2022.Figure2AB.day_time,Feldmann_Christmas2022.Figure2AB.hourly_beta_christmas_eve-Feldmann_Christmas2022.Figure2AB.hourly_beta_non_christmas_average,'color',Feldmann_Christmas2022.Figure2AB.colormap(2,:),'linewidth',3);
hold on
p4=plot(Feldmann_Christmas2022.Figure2AB.day_time,zeros(1,length(Feldmann_Christmas2022.Figure2AB.day_time)),'linewidth',3,'linestyle','--','color',Feldmann_Christmas2022.Figure2AB.colormap(1,:));
ylabel('X-Mas related beta change [%]')
legend([p3 p4 b2],{'Christmas associated change','Non-christmas baseline','p < 0.05'})
set(gcf,'Position', [250  250  1000  500])




