%% Asexual model
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 2.5e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
mm = 1;             % Run index

% Histogram animation
ax = [0 1 0 0.25];
figure
for t = 0: T
h = hists_fn(M, F, 0, 0, t, mu, 0, mm, ax, 'overlap', 'asex');
drawnow
end

%% Homogeneous population model
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 2.5e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GF = F + 1;
mm = 1;             % Run index

% Histogram animation
ax = [0 1 0 0.25];
figure
for t = 0: T
h = hists_fn(M, F, 0, 0, t, mu, GF, mm, ax, 'hamming', 'homo');
drawnow
end

%% DH
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 2.5e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GF = 0.05*F;
mm = 1;             % Run index

% Histogram animation
ax = [0 1 0 0.25];
figure
for t = 0: T
h = hists_fn(M, F, 0, 0, t, mu, GF, mm, ax, 'overlap', 'sexu');
drawnow
end
%% Assortativity
% Histogram animation

clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 100;
A = 100;
mu = 2.5e-3;%2.5e-3;          % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;
mm = 1;             % Run index

% Histogram animationS
ax = [0 1 0 0.25];
% Full genome
figure
for t = 0: T
h = hists_fn(M, F, C, A, t, mu, GC, mm, ax, 'overlap', 'sexu');
drawnow
end