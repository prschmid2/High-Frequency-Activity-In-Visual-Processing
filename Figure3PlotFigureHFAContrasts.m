clear all
close all
clc

%% LOAD DATA

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/HFAContrasts.mat' )

%% PLOT DATA

time                        = linspace( -1,2,1501 );

figure; hold on
plot( time, HFA*10e14 )
legend( '60', '70', '80', '90' )
xlim([-.2 .6])
xlabel( 'time [s]' )
set( gca, 'XTick', [-.2:.2:.6] )
ylim([-.6 .9])
ylabel( 'amplitude [fT]' )
set( gca, 'YTick', [-.6:.3:.9] )
line( [0 0], [-.6 .9], 'Color', 'black' )
set( gca, 'FontSize', 27 )
set( gca, 'FontName', 'Cambria' )