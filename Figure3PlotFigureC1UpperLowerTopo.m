clear all
close all
clc

%% LOAD DATA

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/C1UpperLowerTopo.mat' )

%% PLOT FIGURE 

figure; hold on
showEEG_hl( Topo(:,1), [26 27] )

figure; hold on
showEEG_hl( Topo(:,2), [26 27] )