%% DH
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 1e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GF = 0.05*F;
mm = 1;             % Run index

% Full genome 
[xdata, ydata, ~]...
    =netwk_fn(M, F, 2, 2, T, mu, 0.05*F, mm, 1, '-', [1 0 0], 0, 0);
% 
% Compatibility 
 netwk_fn(M, F, 2, 2, T, mu, GF, mm, 1, '-', [1 0 0], xdata, ydata ...
     );

%% Assortativity

clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 100;
A = 100;
mu = 1e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;        % Compatibility Threshold
mm = 1;             % Run index

% Full genome 
[xdata2, ydata2, ~]...
    =netwk_fn(M, F, C, A, T, mu, 0.05*F, mm, 1, '-', [0 1 0], 0, 0);
             
% Compatibility 
 netwk_fn(M, F, C, A, T, mu, GC, mm, 2, '-', [1 0 0], xdata2, ydata2 ...
     );

%% Assortativity 2

clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 1500;
A = 1000;
mu = 1e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;        % Compatibility Threshold
mm = 1;             % Run index

% Full genome 
[xdata2, ydata2, ~]...
    =netwk_fn(M, F, C, A, T, mu, 0.05*F, mm, 1, '-', [0 1 0], 0, 0);
             
% Compatibility 
 netwk_fn(M, F, C, A, T, mu, GC, mm, 2, '-', [1 0 0], xdata2, ydata2 ...
     );



