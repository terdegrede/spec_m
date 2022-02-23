%% 
% Computing -and saving data from- the model with fixed parameters.
clc, clearvars

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual
B = 9000;
mu = 0.001;         % Mutation rate
T = 500;            % Numer of generations

dB = 0.05*B;        % Treshold for reproductive isolation
dS = dB*N/B;        % Treshold for genetic distance

P = fn_spec(M, N, B, mu, T, dS, dB);
disp('end_1')
% save /home/marv/git_joaaaaaaaaao/spec_f/p_matB5000_max.mat

%%
% PARFOR: Enlarging the genome size letting the mating segment fixed
clc, clearvars
%parpool(6)
M = 500;            % Numer of individuals
B = 4000;
mu = 0.001;         % Mutation rate
T = 2000;            % Number of generations

dB = 0.05*B;        % Treshold for reproductive isolation

parfor NN = 0:5
    N = 40000+ 10000*NN;  % Genes per individual
    dS = dB*N/B;        % Treshold for genetic distance
    P = fn_spec(M, N, B, mu, T, dS, dB);
end

disp('end_2')

%%
% PLOT Degree and number of clusters: for fixed parameters and range of 
% generations
clc, clearvars , close all

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual
B = 9000;            % Mating segment
mu = 0.001;         % Mutation rate
Trng = 0: 10 :500;            % Range of generations

deg_cls2(M, N, mu, B, Trng);
disp('end_3')

%%
% PLOT Graph in specific generation
clc, clearvars , close all

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual
B = 9000;            % Mating segment
mu = 0.001;         % Mutation rate
T = 500;            % Range of generations

grph_fn(M, N, B, mu, T)
close all
disp('end_4')

%%
% MOVIE GRAPH: Creates an animation of the behavior of the system during an 
% interval of generations
clc, clearvars , close all

M = 500;            % Numer of individuals
N = 10000;           % Genes per individual
B = 10000;            % Mating segment
mu = 0.001;         % Mutation rate 
Trng = 450:500;            % Range of generations

mov_fn(M, N, B, mu, Trng)
disp('end_5')

%% 
% PLOT TEMPORAL
% Degree and number of clusters: for fixed parameters and range of 
% generations
% clc, clearvars , close all
% parfor n= 0:5
% M = 500;            % Numer of individuals
% N = 40000+ 10000*n;           % Genes per individual
% B = 4000;            % Mating segment
% mu = 0.001;         % Mutation rate
% Trng = 0: 16 :800;            % Range of generations
% 
% deg_cls2(M, N, mu, B, Trng);
% end
% disp('end_30')

% clc, clearvars , close all
% parfor n= 0:9
% M = 500;            % Numer of individuals
% N = 10000+ 1000*n;           % Genes per individual
% B = 3000;            % Mating segment
% mu = 0.001;         % Mutation rate
% Trng = 0: 25 :2000;            % Range of generations
% 
% deg_cls2(M, N, mu, B, Trng);
% end
% disp('end_31')
% 
% 
% clc, clearvars , close all
% parfor n= 0:11
% M = 500;            % Numer of individuals
% N = 10000+ 1000*n;           % Genes per individual
% B = 4000;            % Mating segment
% mu = 0.001;         % Mutation rate
% Trng = 0: 25 :2000;            % Range of generations
% 
% deg_cls2(M, N, mu, B, Trng);
% end
% disp('end_32')
% 
clc, clearvars , close all
parfor n= 1:6
M = 500;            % Numer of individuals
N = 10000;           % Genes per individual
B = 4000+ 1000*n;            % Mating segment
mu = 0.001;         % Mutation rate
Trng = 0: 1 :2000;            % Range of generations

deg_cls2(M, N, mu, B, Trng);

end

%
% PLOT Graph in specific generation
% clc, clearvars , close all
% parfor n= 1:10
% M = 500;            % Numer of individuals
% N = 19000;           % Genes per individual
% B = 3000;            % Mating segment
% mu = 0.001;         % Mutation rate
% T = 1990+n;            % Range of generations
% 
% grph_fn(M, N, B, mu, T)
% end
% disp('end_33')


% % Computing -and saving data from- the model with fixed parameters.
% clc, clearvars
% 
% M = 500;            % Numer of individuals
% N = 10000;           % Genes per individual
% % B = 10000;
% mu = 0.001;         % Mutation rate
% T = 2000;            % Numer of generations
% 
% parfor n = 1:6
%     B = 4000+ 1000*n;
%     dB = 0.05*B;        % Treshold for reproductive isolation
%     dS = dB*N/B;        % Treshold for genetic distance
%     P = fn_spec(M, N, B, mu, T, dS, dB);
% end
% 
% disp('end_1')



