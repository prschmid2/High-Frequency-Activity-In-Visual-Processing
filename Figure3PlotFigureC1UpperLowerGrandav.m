clear all
close all
clc

%% LOAD DATA

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/C1UpperLowerGrandav.mat' )

%% PLOT DATA

time                        = linspace( -1,2,1501 );

figure; hold on
plot( time, ULVF(:,1)*10e5, 'b' )
plot( time, ULVF(:,2)*10e5, 'g' )
plot( time, GA*10e5, 'k' )
legend( 'lower', 'upper', 'grand average' )
h = fill( [.044 .044 .088 .088], [-6 6 6 -6], [0 0 0], 'HandleVisibility', 'off', 'FaceAlpha', .5  );
uistack( h, 'bottom' )
xlim([-.2 .6])
set( gca, 'XTick', [-.2:.2:.6] )
ylim([-6 6])
set( gca, 'YTick', [-6:3:6] )
line( [0 0], [-6 6], 'Color', 'black' )
xlabel( 'time [s]' )
ylabel( 'amplitude [µV]' )