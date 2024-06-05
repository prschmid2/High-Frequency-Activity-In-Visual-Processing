clear all
close all
clc

%% LOAD DATA

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/HFAContrastsMeanAmp.mat' )

%% COLOR DEFINITION

ccolor(1,:)                         = [233 175 175]/255;
ccolor(2,:)                         = [222 135 135]/255;
ccolor(3,:)                         = [211 95 95]/255;
ccolor(4,:)                         = [200 55 55]/255;

%% PLOT DATA

x                       = 1:4;
xrs                     = GetOffset4OverlappingDataPoints( HFA', 20, x, 150 );

figure; hold on
for c = 1:4
    plot( xrs(:,c), HFA(c,:)*10e14, 'o', 'markeredgecolor', 'w', 'markerfacecolor', ccolor(c,:) )
end
for c = 1:3
    line( [c+.2 c+.8], [mean( HFA(c,:) ) mean( HFA(c+1,:) )]*10e14, 'Color', [0 0 0], 'LineWidth', 2 )
end
xlabel( 'contrast level [%]' )
xlim([-1 6])
set( gca, 'xtick', [1:4] )
set( gca, 'xticklabel', {'60', '70', '80', '90'} )
ylim([-2 2.3])
set( gca, 'YTick', [-2:2:2] )
ylabel( 'amplitude [fT]' )
set( gca, 'FontSize', 27 )
set( gca, 'FontName', 'Cambria' )