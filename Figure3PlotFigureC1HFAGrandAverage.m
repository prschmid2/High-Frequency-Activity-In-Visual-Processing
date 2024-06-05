clear all
close all
clc

%% LOAD DATA

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/C1HFAGrandAverage.mat' )

%% PLOT DATA

figure; hold on
yyaxis left
plot( time, C1, 'r' )
shadedErrorBar( time, C1, Ec1, 'r', 1 )
ylim([-2.5 5])
set( gca, 'YTick', [-2.5:2.5:5] )
ylabel( 'amplitude [µV]' )
yyaxis right
plot( time, HFA, 'K' )
shadedErrorBar( time, HFA, Ehfa, 'k', 1 )
ylim([-.4 .8])
set( gca, 'YTick', [-.4:.4:.8] )
ylabel( 'amplitude [fT]' )
line( [0 0], [-.4 .8], 'Color', 'black' )
xlim([-.2 .6])
set( gca, 'XTick', [-.2:.2:.6] )
set( gca, 'FontSize', 27 )
set( gca, 'FontName', 'Cambria' )
