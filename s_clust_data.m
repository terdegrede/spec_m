% Script to get number of cluster in each generation of one run.

%% Case 1
clc, clearvars

M = 500;            % Numer of individuals
N = 2500;           % Genes per individual

% 
B = 2200;            % Mating segment
A = 300;
dA = 4;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end

%% Case 2
clc, clearvars

M = 500;            % Numer of individuals
N = 2500;           % Genes per individual

% 
B = 1600;            % Mating segment
A = 900;
dA = 26;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
  
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end


%% Case 3
clc, clearvars

M = 500;            % Numer of individuals
N = 2500;           % Genes per individual

% 
B = 1000;            % Mating segment
A = 1500;
dA = 60;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end

%% Case 4
clc, clearvars

M = 500;            % Numer of individuals
N = 2500;           % Genes per individual

% 
B = 100;            % Mating segment
A = 2400;
dA = 120;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100

    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end


%% Case 5
clc, clearvars

M = 500;            % Numer of individuals
N = 2500;           % Genes per individual

% 
B = 2200;            % Mating segment
A = 50;
dA = 1;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end

%% Case 6
clc, clearvars

M = 500;            % Numer of individuals
N = 2500;           % Genes per individual

% 
B = 1600;            % Mating segment
A = 50;
dA = 1;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end

%% Case 8
clc, clearvars

M = 500;            % Numer of individuals
N = 2500;           % Genes per individual

% 
B = 100;            % Mating segment
A = 50;
dA = 1;
%

mu = 0.001;         % Mutation rate
T = 200;            % Numer of generations
Trng = 1: T;

parfor mm = 1: 100
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
end

%% 
% parfor mm = 1: 100
    mm = 100; % To delete when uncommenting
    Trng = T; % To delete when uncommenting
    clust_data_fn(A, B, M, N, mu, Trng, mm, dA)
% end
borrar % To delete when uncommenting