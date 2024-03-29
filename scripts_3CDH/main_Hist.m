%% Asexual model 
% Fig1a.
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 1e-3;%2.5e-3;          % Mutation rate
T = 1000;            % Number of generations
mm = 1;             % Run index

% Histogram animation
ax = [0 1 0 0.25];
figure
for t = T: T
h = hists_fn(M, F, 0, 0, t, mu, 0, mm, ax, 'hamming', 'asex');
axis square
drawnow
end


%% Homogeneous population model
% Fig1b.
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 1e-3;%2.5e-3;          % Mutation rate
T = 1000;            % Number of generations
GF = F + 1;
mm = 1;             % Run index

% Histogram animation
ax = [0 1 0 0.25];
figure
for t = T: T
h = hists_fn(M, F, 1, 1, t, mu, GF, mm, ax, 'hamming', 'homo');
axis square
drawnow
end

%% DH
% Fig1c.
clc, clearvars, close all
M = 500;            % Number of individuals
F = 10000;            % Genes per individual
mu = 1e-3;%2.5e-3;          % Mutation rate
T = 1000;            % Number of generations
GF = 0.05*F;
mm = 1;             % Run index

% Histogram animation
ax = [0 1 0 0.25];
figure
for t = T: T
h = hists_fn(M, F, 2, 2, t, mu, GF, mm, ax, 'hamming', 'sexu');
axis square
drawnow
end
%% Assortativity
% Fig 5a

clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 100;
A = 100;
mu = 1e-3;         % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;
mm = 1;             % Run index

% Histogram animationS
ax = [0 1 0 0.25];
% Full genome
figure
for t = 0: 500
h = hists_fn(M, F, C, A, t, mu, GC, mm, ax, 'hamming', 'asex');
drawnow
end

%% Assortativity
% Fig 5b
clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 100;
A = 1000;
mu = 1e-3;         % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;
mm = 1;             % Run index

% Histogram animationS
ax = [0 1 0 0.25];
% Full genome
figure
for t = 0: 500
h = hists_fn(M, F, C, A, t, mu, GC, mm, ax, 'hamming', 'asex');
drawnow
end

%% Assortativity
% Fig 5c
clc, clearvars, close all
M = 500;            % Number of individuals
F = 2500;            % Genes per individual
C = 100;
A = 2400;
mu = 1e-3;         % Mutation rate
T = 500;            % Number of generations
GC = 0.05*C;
mm = 1;             % Run index

% Histogram animationS
ax = [0 1 0 0.25];
% Full genome
figure
for t = 0: 500
h = hists_fn(M, F, C, A, t, mu, GC, mm, ax, 'hamming', 'asex');
drawnow
end