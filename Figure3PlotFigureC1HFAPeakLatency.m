clear all
close all
clc

%% LOAD DATA 

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/C1HFAPeakLatency.mat' )

%% PLOT DATA

x                       = 1:2
xrs                     = GetOffset4OverlappingDataPoints( Peak', 20, x, 80 );

figure; hold on
plot( xrs(:,1), Peak(1,:), 'o', 'markeredgecolor', 'w', 'markerfacecolor', 'r' )
plot( xrs(:,2), Peak(2,:), 'o', 'markeredgecolor', 'w', 'markerfacecolor', 'k' )
line( [1.2 1.8], mean( Peak,2 ), 'color', [0 0 0], 'LineWidth', 2 )
xlim([-1 4])
set( gca, 'XTick', [1:1:2] )
set( gca, 'XTicklabel', {'C1', 'HFA'} )
ylabel('peak latency [s]')
ylim([0 .3])
set( gca, 'YTick', [0:.1:.3] )
set( gca, 'FontSize', 27 )
set( gca, 'FontName', 'Cambria' )