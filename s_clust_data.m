% Script to get number of cluster in each generation of one run.
% % % % Case 3
% % % clc, clearvars
% % % 
% % % M = 500;            % Numer of individuals
% % % N = 2500;           % Genes per individual
% % % 
% % % 
% % % B = 1000;            % Mating segment
% % % A = 1500;
% % % dA = 60;
% % % 
% % % 
% % % mu = 0.001;         % Mutation rate
% % % T = 200;            % Numer of generations
% % % Trng = 1: T;
% % % 
% % % parfor mm = 1: 100
% % %     
% % %     clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
% % % end

%% Case 1
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 9000;            % Mating segment
A = N-M;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

%% Case 2
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 5000;            % Mating segment
A = N-M;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

%% Case 3
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 2000;            % Mating segment
A = N-M;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

%% Case 4
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 9000;            % Mating segment
A = 100;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

%% Case 5
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 5000;            % Mating segment
A = 100;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

%% Case 6
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 2000;            % Mating segment
A = 100;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

%% Case 7
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 9000;            % Mating segment
A = N+ 1;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn2(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

%% Case 8
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 5000;            % Mating segment
A = N+ 1;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn2(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

%% Case 9
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual

% 
B = 2000;            % Mating segment
A = N+ 1;
dA = 0.04*A;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn2(A, B, M, N, mu, Trng, mm, dA)
end
fig_avg_fn(M, N, B, A, mu, T);

% %% 
% % parfor mm = 1: 100
%     mm = 100; % To delete when uncommenting
%     Trng = T; % To delete when uncommenting
%     clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
% % end
% borrar % To delete when uncommenting