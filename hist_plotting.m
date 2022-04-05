clc, clearvars, close all
B = 20;
M = 500;

% Creating a video object
v = VideoWriter(['hist_M_500_N_2500_B_',num2str(B),'.avi']);
open(v);

% Input: Population at generation T
for T = 1:500
load(['data_fn/M_500_N_2500_B_',num2str(B),'_T_',num2str(T),'_mu_0.001.mat'])


% Relevant Variables:
% DCA: Hamming distance matrix of the A segment of all the individuals 
% DCB: Hamming distance matrix of the B segment of all the individuals 
PB = P(:, 1:B);
PA = P(:, B+ 1:end);

% Calculating Hamming distance matrix
DCB = diag(nan*ones(1, M)) + pdist2(PB, PB, 'hamming')*B;
DCA = diag(nan*ones(1, M)) + pdist2(PA, PA, 'hamming')*size(PA, 2);
DC = diag(nan*ones(1, M)) + pdist2(P, P, 'hamming')*size(P, 2);

% Plots
subplot(131)
histogram(tril(DCB), 'Normalization','probability')
title('B segment')
axis([0 B 0 0.7])

subplot(132)
histogram(tril(DCA), 'Normalization','probability')
title('A segment')
axis([0 size(PA, 2) 0 0.7])

subplot(133)
histogram(tril(DC), 'Normalization','probability')
title(sprintf('Full Genome, T = %d', T))
axis([0 size(P, 2) 0 0.7])

drawnow

% Saving video
frame = getframe(gcf);
writeVideo(v,frame);

end

close(v);