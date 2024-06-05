clear all
close all
clc

%% LOAD DATA

load( '/export/data/pschmid/meyend/C2/PaperRepository/data/HFAGrandAverageTopo.mat' )

%% PLOT FIGURE

figure; hold on
showMEG_hl( double( OR ), hl )
