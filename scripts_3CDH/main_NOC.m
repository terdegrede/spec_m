%% Fig3
clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 100;
A = 100;
mu = 1e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;        % Compatibility Threshold
MM = 75;             % Run index


% Allocation
NOC_F = zeros(MM, T);
NOC_C = NOC_F; NOC_A = NOC_C; NOC_N = NOC_A;
%------------------------------------------------------------------
GF = 0.05*F;
GA = 1;
GN = 0.05*(F- A- C);

parfor mm = 1:MM
    for t = 1: T
        % Full genome (Fig3a)
        [~, ~, NOC_F(mm, t)] =...
            netwk_fn(M, F, C, A, t, mu, GF, mm, 1, '-', [0 1 0], 0, 0);

        % Compatibility chromosome (Fig3b)
        [~, ~, NOC_C(mm, t)]...
            =netwk_fn(M, F, C, A, t, mu, GC, mm, 2, '-', [0 1 0], 0, 0);

        % Assortativity chromosome (Fig3c)
        [~, ~, NOC_A(mm, t)]...
            =netwk_fn(M, F, C, A, t, mu, GA, mm, 3, '-', [0 1 0], 0, 0);

        % Neutral Chromosome (Fig3d)
        [~, ~, NOC_N(mm, t)]...
            =netwk_fn(M, F, C, A, t, mu, GN, mm, 4, '-', [0 1 0], 0, 0);
    end
end

save(['../data_3CDH/NOC_M_' num2str(M) '_F_' num2str(F) '_C_' num2str(C)... 
    '_A_' num2str(A) '_T_' num2str(T) '_mu_' num2str(mu) '.mat']...
            ,'M', 'F', 'A', 'C', 'T', 'mu', 'GF', 'GC', 'GA', 'GN',...
            'NOC_F', 'NOC_N', 'NOC_A', 'NOC_C','MM')



%% Individual plots
% Fig3a
figure,
scatter(1: T, NOC_F, 'y')
hold on
plot(1: T, mean(NOC_F), 'g')

% Fig3b
figure,
scatter(1: T, NOC_C, 'y')
hold on
plot(1: T, mean(NOC_C), 'r')

% Fig3c
figure,
scatter(1: T, NOC_A, 'y')
hold on
plot(1: T, mean(NOC_A), 'b')

% Fig3d
figure,
scatter(1: T, NOC_N, 'y')
hold on
plot(1: T, mean(NOC_N), 'k')

%% Merged plots
% Fig3e
figure,
plot(1: T, mean(NOC_F), 'g')
hold on
plot(1: T, mean(NOC_C), 'r')
plot(1: T, mean(NOC_A), 'b')
plot(1: T, mean(NOC_N), 'k')
axis square

