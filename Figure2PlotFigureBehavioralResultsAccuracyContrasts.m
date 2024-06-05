clear all
close all
clc

%% LOAD DATA

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/BehavioralResults.mat', 'AC' )

%% COLOR DEFINITION

ccolor(1,:)                         = [233 175 175]/255;
ccolor(2,:)                         = [222 135 135]/255;
ccolor(3,:)                         = [211 95 95]/255;
ccolor(4,:)                         = [200 55 55]/255;

%% PLOT DATA

x                                   = 1:4;
xrs                                 = GetOffset4OverlappingDataPoints( AC', 20, x, 100 );

figure; hold on
for c = 1:4
    plot( xrs(:,c), AC(c,:)*100, 'o', 'markeredgecolor', 'w', 'markerfacecolor', ccolor(c,:) )
end
for c = 1:3
    line( [c+.2 c+.8], [mean( AC(c,:) ) mean( AC(c+1,:) )]*100, 'Color', [0 0 0], 'LineWidth', 2 )
end
ylabel( 'performance [%]' )
xlabel( 'contrast level [%]' )
xlim([-1 6])
ylim([80 100])
set( gca, 'xtick', [1:4] )
set( gca, 'xticklabel', {'60', '70', '80', '90'} )
set( gca, 'FontSize', 27 )
set( gca, 'FontName', 'Cambria' )