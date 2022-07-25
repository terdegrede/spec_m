%% Asexual model
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 2.5e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
mm = 1;             % Run index

% P = asex_fn(M, F, mu, T, mm);

%% Homogeneous population model
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 2.5e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GF = F + 1;
mm = 1;             % Run index

% P = sex_fn(M, F, mu, T, GF, mm);

%% DH model
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 2.5e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GF = 0.05*F;
mm = 1;             % Run index

% P = sex_fn(M, F, mu, T, GF, mm);

%% Assort   
clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 100;
A = 100;
mu = 2.5e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;
mm = 1;             % Run index

% P = assor_fn(M, F, C, A, mu, T, GC, mm);

