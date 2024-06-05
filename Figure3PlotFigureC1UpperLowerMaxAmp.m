clear all
close all
clc

%% LOAD DATA

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/C1UpperLowerMaxAmp.mat' )

%% PLOT DATA

x                               = 1:2;
xrs                             = GetOffset4OverlappingDataPoints( maxamp', 20, x, 100 );

figure; hold on
plot( xrs(:,1), maxamp(1,:)*10e5, 'o', 'markeredgecolor', 'w', 'markerfacecolor', 'b' )
plot( xrs(:,2), maxamp(2,:)*10e5, 'o', 'markeredgecolor', 'w', 'markerfacecolor', 'g' )
line( [1.2 1.8], mean( maxamp,2 )*10e5, 'color', [0 0 0], 'LineWidth', 2 )
xlim([-1 4])
set( gca, 'XTick', [1:1:2] )
set( gca, 'XTicklabel', {'LVF', 'UVF'} )
ylabel('amplitude [µV]')
ylim([0 10])
set( gca, 'YTick', [0:2.5:10] )
set( gca, 'FontSize', 27 )
set( gca, 'FontName', 'Cambria' )