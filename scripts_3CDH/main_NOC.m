clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 100;
A = 100;
mu = 1e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;        % Compatibility Threshold
mm = 1;             % Run index

    
% Alloc
NOC_F = zeros(1, T);
NOC_C = NOC_F; NOC_A = NOC_C; NOC_N = NOC_A;
for t = 1:T
%% Fig3a
% Full genome

[~, ~, NOC_F(t)]...
    =netwk_fn(M, F, C, A, t, mu, 0.05*F, mm, 1, '-', [0 1 0], 0, 0);
             

%% Fig3b
% Compatibility
[~, ~, NOC_C(t)]...
    =netwk_fn(M, F, C, A, t, mu, 0.05*C, mm, 2, '-', [0 1 0], 0, 0);


%% Fig3c
% Assortativity
[~, ~, NOC_A(t)]...
    =netwk_fn(M, F, C, A, t, mu, 0.05*A, mm, 3, '-', [0 1 0], 0, 0);

%%
% Neutral
[~, ~, NOC_N(t)]...
    =netwk_fn(M, F, C, A, t, mu, 0.05*N, mm, 4, '-', [0 1 0], 0, 0);


end